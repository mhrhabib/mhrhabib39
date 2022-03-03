import 'package:flutter/material.dart';

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
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      child: Image.network(
                        "https://picsum.photos/200/300",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Positioned(
                      top: 2,
                      right: 4,
                      child: Icon(Icons.favorite),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text('Nike good Shoes'),
                  Text('Nike good Shoes'),
                  Text('Nike good Shoes'),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
