import 'package:flutter/material.dart';

class CustomCategoris extends StatelessWidget {
  const CustomCategoris({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 45,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(width: 8),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              height: 30,
              width: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // Image.network("src"),
                  Icon(Icons.watch),
                  SizedBox(width: 4),
                  Text("watch"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
