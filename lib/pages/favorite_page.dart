import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';

class FavoritePage extends StatelessWidget {
  static const route = '/favorite-page';
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Page"),
      ),
      body: const Center(
        child: Text('No item added yet'),
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
