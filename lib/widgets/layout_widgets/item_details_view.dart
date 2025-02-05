import 'package:flutter/material.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({
    super.key,
    required this.number,
  });
  final int number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          number.toString(),
          style: TextStyle(
            color: Colors.amber,
            fontSize: 64,
          ),
        ),
      ),
    );
  }
}
