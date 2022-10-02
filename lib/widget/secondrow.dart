import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  String title;
  bool isSelected;
  RowWidget({Key? key, required this.title, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: isSelected ? Colors.black : Colors.white,
            )),
      ],
    );
  }
}
