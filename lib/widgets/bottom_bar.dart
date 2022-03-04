import 'package:flutter/material.dart';
import 'package:mhrhabib39/pages/categoris_page.dart';
import 'package:mhrhabib39/pages/favorite_page.dart';
import 'package:mhrhabib39/pages/landing_page.dart';
import 'package:mhrhabib39/pages/profile_page.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.0,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0)),
            color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(
                        LandingPage.route,
                      );
                    },
                    icon: const Icon(Icons.home),
                    color: const Color(0xFFEF7532),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(
                        FavoritePage.route,
                      );
                    },
                    icon: const Icon(
                      Icons.favorite,
                      color: Color(0xFF676E79),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(CategorisPage.route);
                    },
                    icon: const Icon(
                      Icons.category,
                      color: Color(0xFF676E79),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(ProfilePage.route);
                    },
                    icon: const Icon(
                      Icons.person,
                      color: Color(0xFF676E79),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
