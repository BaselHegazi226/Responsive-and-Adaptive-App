import 'package:flutter/material.dart';

class LayoutBuilderApply extends StatelessWidget {
  static String id = 'Layout Builder Apply';
  const LayoutBuilderApply({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            title: Title(
              color: Colors.red,
              child: Text(
                'Layout Builder',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return ListTileItem(
                index: index,
              );
            },
          ),
        );
      },
    );
  }
}

class ListTileItem extends StatelessWidget {
  const ListTileItem({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber.withAlpha(128),
      height: 24,
      child: ListTile(
        title: Text(
          '${index + 1}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class LayoutBuilderApp extends StatelessWidget {
  const LayoutBuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: LayoutBuilderApply.id,
      home: LayoutBuilderApply(),
    );
  }
}
