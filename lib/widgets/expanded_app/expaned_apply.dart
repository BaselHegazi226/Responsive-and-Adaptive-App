import 'package:flutter/material.dart';

class ExpandApply extends StatelessWidget {
  static String id = 'Expanded Apply';
  const ExpandApply({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.red,
          height: 150,
        ),
        Container(
          color: Colors.blue,
          height: 150,
        ),
        //make the render error disappear because give her child the remainder height
        //if you delete the height : 500 not be affected
        Expanded(
          child: Container(
            color: Colors.yellow,
            height: 500, // make the height do render error
          ),
        ),
      ],
    );
  }
}
