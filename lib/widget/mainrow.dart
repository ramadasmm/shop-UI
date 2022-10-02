import 'package:flutter/material.dart';

class MainRow extends StatelessWidget {
  final String title;
  bool isSelected;
  MainRow({Key? key, required this.title, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
            isSelected ? Colors.pink[100] : Colors.grey[300]),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
            color: isSelected ? Colors.white : Colors.black, fontSize: 16),
      ),
    );
  }
}
