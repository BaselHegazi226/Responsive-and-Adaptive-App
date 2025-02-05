import 'package:flutter/material.dart';

class ListTileItem extends StatelessWidget {
  final int index;
  final Color color;
  const ListTileItem({
    super.key,
    required this.index,
    this.color = Colors.amber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      color: color,
      height: 48,
      child: ListTile(
        title: Text(
          textAlign: TextAlign.center,
          '${index + 1}',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
