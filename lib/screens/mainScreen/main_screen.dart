import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double btmNavHeight = size.height * 0.08;
    return Scaffold(
      body: Stack(
        children: [

          //screen
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: btmNavHeight,
              child: Container(
                color: Colors.blue,

              )),

          //btmNavigationBar
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                color: Colors.pink,
                height: btmNavHeight,
              )),
        ],
      ),
    );
  }
}
