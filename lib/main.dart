import 'package:flutter/material.dart';
import 'package:responsive_app_test_1/widgets/media_query_apply.dart';

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
        body: MediaQueryApply(),
      ),
    );
  }
}
