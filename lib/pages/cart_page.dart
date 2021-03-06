import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';

class CartPage extends StatelessWidget {
  static const route = '/cart-page';
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Your cart',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text('NO item added'),
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
