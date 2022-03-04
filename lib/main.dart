import 'package:flutter/material.dart';
import 'package:mhrhabib39/pages/categoris_page.dart';
import 'package:mhrhabib39/pages/landing_page.dart';
import 'package:mhrhabib39/providers/product_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductProvider(),
      child: MaterialApp(
        title: 'Habibur Rahman Habib',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LandingPage(),
      ),
    );
  }
}
