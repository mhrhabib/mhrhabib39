import 'package:flutter/material.dart';
import 'package:mhrhabib39/widgets/custom_app_bar.dart';
import 'package:mhrhabib39/widgets/custom_search_field.dart';
import 'package:mhrhabib39/widgets/cutom_row.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppBar(),
          Padding(
            padding: EdgeInsets.all(18.0),
            child: CustomSerchField(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: CustomRow(),
          ),
        ],
      ),
    );
  }
}
