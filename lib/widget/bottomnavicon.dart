import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  IconData icon;
  bool isSelected;
  BottomNav({Key? key, required this.icon, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 60,
      decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromARGB(255, 232, 147, 176)
              : Colors.white,
          shape: BoxShape.circle,
          boxShadow: isSelected
              ? [BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 5)]
              : []),
      child: Icon(
        icon,
        color: isSelected ? Colors.white : Colors.black,
      ),
    );
  }
}
