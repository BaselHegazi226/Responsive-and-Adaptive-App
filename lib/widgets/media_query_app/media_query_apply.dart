import 'package:flutter/material.dart';

class MediaQueryApply extends StatelessWidget {
  static String id = 'Media Query Apply';
  const MediaQueryApply({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
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
      body: Column(
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
      ),
    );
  }
}
