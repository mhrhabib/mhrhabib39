import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
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
    );
  }
}
