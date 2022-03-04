import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/custom_categories.dart';
import '../widgets/custom_product_grid.dart';

class CategorisPage extends StatelessWidget {
  static const route = '/category-page';
  const CategorisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        physics: const NeverScrollableScrollPhysics(),
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
              const SizedBox(height: 600, child: CustomProductGrid())
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFF17532),
        child: const Icon(Icons.shopping_cart),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomBar(),
    );
  }
}
