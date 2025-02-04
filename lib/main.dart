import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Adaptive & Responsive',
      home: Scaffold(
        appBar: AppBar(
          title: Title(
            color: Colors.red,
            child: Text(
              'Media Query',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ),
        ),
        body: ContainerColumn(),
      ),
    );
  }
}

class ContainerColumn extends StatelessWidget {
  const ContainerColumn({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Column(
      spacing: 16,
      children: [
        Container(
          height: size.height * .2,
          color: Colors.red,
        ),
        Container(
          height: size.height * .2,
          color: Colors.brown,
        ),
        Container(
          height: size.height * .2,
          color: Colors.green,
        ),
      ],
    );
  }
}
