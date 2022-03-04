import 'package:flutter/material.dart';
import 'package:mhrhabib39/models/product.dart';
import 'package:mhrhabib39/pages/product_details_page.dart';
import 'package:mhrhabib39/providers/product_provider.dart';
import 'package:provider/provider.dart';

class CustomProductGrid extends StatelessWidget {
  const CustomProductGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductProvider>(context);
    return FutureBuilder(
      future: products.getAllProducts(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: .75,
            ),
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              final Product product = snapshot.data[index];
              return InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    ProductDetailsPage.route,
                    arguments: product.id,
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3.0,
                        blurRadius: 5.0,
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Hero(
                            tag: "$index",
                            child: Container(
                              height: 135.0,
                              // width: 75,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(product.image),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              product.title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              "\$${product.price}",
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 15,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 15,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 15,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 15,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 15,
                              ),
                              const SizedBox(width: 4),
                              Text(product.rating.rate.toString()),
                            ],
                          ),
                        ],
                      ),
                      const Positioned(
                        top: 6,
                        left: 3,
                        child: Chip(
                          label: Text("30%"),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 3,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
