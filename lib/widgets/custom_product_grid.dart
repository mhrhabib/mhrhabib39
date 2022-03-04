import 'package:flutter/material.dart';
import 'package:mhrhabib39/pages/product_details_page.dart';

class CustomProductGrid extends StatelessWidget {
  const CustomProductGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: .7,
      ),
      itemCount: 10,
      itemBuilder: (context, idex) {
        return InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return ProductDetailsPage();
              },
            ));
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
                color: Colors.white),
            child: Stack(
              children: [
                Column(
                  children: [
                    Hero(
                      tag: "image1",
                      child: Container(
                        height: 155.0,
                        // width: 75,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          image: DecorationImage(
                            image:
                                NetworkImage('https://picsum.photos/200/300'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  left: 3,
                  child: const Chip(
                    label: Text("30%"),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 3,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
