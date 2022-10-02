import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductDetailsPage extends StatelessWidget {
  String title;
  String price;
  String image;
  ProductDetailsPage(
      {Key? key, required this.title, required this.price, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/candel$image.jpg",
            height: MediaQuery.of(context).size.height / 1.6,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.close),
            padding: const EdgeInsets.only(top: 40),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'ILLUM',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  title,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text('\$$price',
                                    style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'SIZE',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('16 OZ',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400))
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text('QTY',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300)),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('1',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400))
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Divider(
                              thickness: 1.5,
                            ),
                            ListTile(
                              leading: const Text(
                                'Details',
                                style: TextStyle(fontSize: 18),
                              ),
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  )),
                            ),
                            const Divider(
                              thickness: 1.5,
                            ),
                            ListTile(
                              leading: const Text(
                                'Shiping & Returns',
                                style: TextStyle(fontSize: 18),
                              ),
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle),
                          child: const Icon(Icons.favorite_border),
                        ),
                        ElevatedButton.icon(
                            onPressed: () {},
                            label: const Text(
                              'Add to cart',
                              style: TextStyle(fontSize: 20),
                            ),
                            icon: const Icon(Icons.shopping_bag_outlined),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.pink[100]),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        horizontal:
                                            MediaQuery.of(context).size.width /
                                                6,
                                        vertical: 15))))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
