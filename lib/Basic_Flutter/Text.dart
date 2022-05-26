import 'package:flutter/material.dart';

void main() => runApp(myApp1());

class myApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Demo'),
          ),
          body: const Center(
            child: Text(
              "This is a text",
              style: TextStyle(
                  fontFamily: "Macondo-Regular",
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.overline,
                  decorationColor: Colors.red,
                  decorationThickness: 5,
                  decorationStyle: TextDecorationStyle.wavy),
            ),
          )),
    );
  }
}
