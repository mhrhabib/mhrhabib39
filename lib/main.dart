import 'package:flutter/material.dart';
import './pages/cart_page.dart';
import './pages/categoris_page.dart';
import './pages/favorite_page.dart';
import './pages/landing_page.dart';
import './pages/product_details_page.dart';
import './pages/profile_page.dart';
import './providers/product_provider.dart';
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
        debugShowCheckedModeBanner: false,
        title: 'Habibur Rahman Habib',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: LandingPage.route,
        routes: {
          LandingPage.route: (context) => const LandingPage(),
          CategorisPage.route: (context) => const CategorisPage(),
          ProductDetailsPage.route: (context) => const ProductDetailsPage(),
          CartPage.route: (context) => const CartPage(),
          FavoritePage.route: (context) => const FavoritePage(),
          ProfilePage.route: (context) => const ProfilePage(),
        },
      ),
    );
  }
}
