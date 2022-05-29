import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double getSmallDiameter(BuildContext context) =>
        MediaQuery.of(context).size.width * 2 / 3;
    double getBigDiameter(BuildContext context) =>
        MediaQuery.of(context).size.height * 7 / 8;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: getSmallDiameter(context),
            height: getSmallDiameter(context),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
