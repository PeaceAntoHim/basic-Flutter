import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

// ignore: must_be_immutable
class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];

// This to made constructor of data
  _MyAppState() {
    for (int i = 0; i < 15; i++) {
      widgets.add(
        Text(
          "Data ke-$i",
          style: const TextStyle(fontSize: 25),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Demo'),
          ),
          body: Column(
            children: widgets,
          )),
    );
  }
}
