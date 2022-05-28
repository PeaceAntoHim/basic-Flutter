import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Excersi Media Query"),
      ),
      // This to create logic in flutter
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: generateContainers,
            )
          : Row(
              children: generateContainers,
            ),

      /*  Container(
        color: Colors.red,
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.height / 3,
      ), */
    );
  }

  List<Widget> get generateContainers {
    return <Widget>[
      Container(color: Colors.red, width: 100, height: 100),
      Container(color: Colors.blue, width: 100, height: 100),
      Container(color: Colors.green, width: 100, height: 100),
    ];
  }
}
