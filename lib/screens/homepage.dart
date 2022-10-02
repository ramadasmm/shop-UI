import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:shopui/screens/proddetailspage.dart';

import '../widget/bottomrowwidget.dart';
import '../widget/mainrow.dart';
import '../widget/product.dart';
import '../widget/secondrow.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            SizedBox(
              width: 15,
            ),
            Text(
              'Shop',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Anthropology',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MainRow(
              title: "Home Decor",
              isSelected: true,
            ),
            MainRow(title: "Bath & Body"),
            MainRow(title: "Beauty"),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 197, 196, 196),
                      spreadRadius: 0,
                      blurRadius: 15,
                    )
                  ]),
              height: MediaQuery.of(context).size.height / 1.4,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RowWidget(
                        title: "Candles",
                        isSelected: true,
                      ),
                      RowWidget(title: "Vases"),
                      RowWidget(title: "Bins"),
                      RowWidget(title: "Floral"),
                      RowWidget(title: "Decor"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        ProductCard(
                            title: "Element Tin Candel",
                            image: "1",
                            price: "24"),
                        ProductCard(
                            title: "Summer Candel", image: "2", price: "19"),
                        ProductCard(
                            title: "Winter Candel", image: "3", price: "35"),
                        ProductCard(
                            title: "Dummy Candle", image: "4", price: "60"),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 5,
                    width: MediaQuery.of(context).size.width / 1.19,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[300],
                    ),
                    child: Container(
                      height: 3,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Holiday Special',
                        style: TextStyle(fontSize: 20),
                      ),
                      Spacer(),
                      Text(
                        'View All',
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(width: 30),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        BottomRowWidget(
                          title: 'Coconut Milk Bath',
                          price: "28",
                          image: "1",
                        ),
                        BottomRowWidget(
                          title: 'Coconut Milk Bath',
                          price: "37",
                          image: "4",
                        ),
                        BottomRowWidget(
                          title: 'Coconut Milk Bath',
                          price: "40",
                          image: "3",
                        ),
                        BottomRowWidget(
                          title: 'Coconut Milk Bath',
                          price: "98",
                          image: "2",
                        ),
                        BottomRowWidget(
                          title: 'Coconut Milk Bath',
                          price: "60",
                          image: "4",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
