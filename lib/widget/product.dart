import 'package:flutter/material.dart';

import '../screens/proddetailspage.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  const ProductCard(
      {Key? key, required this.title, required this.price, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ProductDetailsPage(
            image: image,
            price: price,
            title: title,
          );
        }));
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SizedBox(
              height: 220,
              width: 160,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/candel$image.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 14),
          ),
          Text(
            "\$ $price",
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
