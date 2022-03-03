import 'package:flutter/material.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(width: 16),
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) => Container(
        width: 260,
        height: 110,
        // alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://picsum.photos/200/300",
            ),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.transparent.withOpacity(0.4),
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text(
              'Apple',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
