import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Daily Deals",
          style: TextStyle(
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
