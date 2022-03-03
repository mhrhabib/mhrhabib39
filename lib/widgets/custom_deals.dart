import 'package:flutter/material.dart';

import 'custom_grid_tile.dart';

class CustomDeals extends StatelessWidget {
  const CustomDeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: MediaQuery.of(context).size.height * 0.42,
      width: MediaQuery.of(context).size.width * 0.60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: CustomGridTile(),
          ),
          Container(
            height: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Text('\$Price'),
          ),
        ],
      ),
    );
  }
}
