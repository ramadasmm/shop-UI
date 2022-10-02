import 'package:flutter/material.dart';

import 'bottomnavicon.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            boxShadow: [
              BoxShadow(color: Colors.grey, spreadRadius: -3, blurRadius: 8)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNav(
              icon: Icons.person,
            ),
            BottomNav(
              icon: Icons.shopping_bag,
            ),
            BottomNav(
              icon: Icons.home,
              isSelected: true,
            ),
            BottomNav(
              icon: Icons.favorite,
            ),
            BottomNav(
              icon: Icons.settings,
            ),
          ],
        ),
      ),
    );
  }
}
