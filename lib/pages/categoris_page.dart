import 'package:flutter/material.dart';

import '../widgets/custom_categories.dart';
import '../widgets/custom_product_grid.dart';

class CategorisPage extends StatelessWidget {
  const CategorisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.rounded_corner,
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          "XE",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Our Products',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: const [
                        Text("Short By"),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ],
                ),
              ),
              CustomCategoris(),
              Container(height: 600, child: CustomProductGrid())
            ],
          ),
        ),
      ),
    );
  }
}
