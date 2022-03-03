import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String title;
  const CustomRow({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CircleAvatar(
              radius: 3,
              backgroundColor: Colors.black,
            ),
            SizedBox(width: 16),
            CircleAvatar(
              radius: 3,
              backgroundColor: Colors.grey,
            ),
            SizedBox(width: 16),
            CircleAvatar(
              radius: 3,
              backgroundColor: Colors.grey,
            ),
            SizedBox(width: 16),
          ],
        ),
      ],
    );
  }
}
