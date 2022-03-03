import 'package:flutter/material.dart';

class CustomDeals extends StatelessWidget {
  const CustomDeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final height = constraints.maxHeight * 0.60;
        final width = constraints.maxWidth * 0.70;
        return Container(
          height: height,
          width: width,
          color: Colors.orange,
        );
      },
    );
  }
}
