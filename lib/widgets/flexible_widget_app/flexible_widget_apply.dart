import 'package:flutter/material.dart';

class FlexibleWidgetApply extends StatelessWidget {
  static String id = 'Flexible Apply';
  const FlexibleWidgetApply({super.key});
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
        Flexible(
          child: Container(
            color: Colors.yellow,
            height: 350, // make the height do render error
          ),
        ),
      ],
    );
  }
}
