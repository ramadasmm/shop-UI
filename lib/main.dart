import 'package:flutter/material.dart';

import 'screens/homepage.dart';
import 'widget/bottomnavbar.dart';
import 'widget/bottomnavicon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading: Image.asset("assets/images/hamburger.png"),
          actions: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              margin: const EdgeInsets.all(10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: Colors.black,
              ),
            )
          ],
        ),
        body: const HomePage(),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
