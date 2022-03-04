import 'package:flutter/material.dart';
import 'package:mhrhabib39/providers/product_provider.dart';
import 'package:provider/provider.dart';

class CustomCategoris extends StatelessWidget {
  CustomCategoris({Key? key}) : super(key: key);
  List<IconData> dummyIcons = [
    Icons.electric_bike,
    Icons.safety_divider,
    Icons.sunny,
    Icons.cloud,
  ];

  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<ProductProvider>(context);
    return FutureBuilder(
      future: categories.getAllCategory(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 45,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    height: 30,
                    // width: 90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Image.network("src"),
                        Icon(dummyIcons[index]),
                        SizedBox(width: 4),
                        Text(snapshot.data[index]),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
