import 'package:flutter/material.dart';

class BottomRowWidget extends StatelessWidget {
  String title;
  String price;
  String image;
  BottomRowWidget(
      {Key? key, required this.title, required this.price, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      height: 150,
      width: 250,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: SizedBox(
              height: 130,
              width: 100,
              child: Image.asset(
                "assets/images/candel$image.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 15)),
                const Text('16 oz',
                    style: TextStyle(fontSize: 15, color: Colors.grey)),
                const Spacer(),
                Text('\$ $price',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18))
              ],
            ),
          )
        ],
      ),
    );
  }
}
