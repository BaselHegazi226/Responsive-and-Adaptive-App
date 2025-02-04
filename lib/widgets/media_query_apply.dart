import 'package:flutter/material.dart';

class MediaQueryApply extends StatelessWidget {
  const MediaQueryApply({super.key});

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
