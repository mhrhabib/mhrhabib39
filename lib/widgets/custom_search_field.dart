import 'package:flutter/cupertino.dart';

class CustomSerchField extends StatelessWidget {
  const CustomSerchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      prefixInsets: const EdgeInsets.only(left: 12),
      padding: const EdgeInsets.all(12),
      placeholder: 'Search product you wish...',
      style: const TextStyle(
        fontSize: 16,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF0F0F0),
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
