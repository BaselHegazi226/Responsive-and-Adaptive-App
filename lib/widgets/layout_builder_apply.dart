import 'package:flutter/material.dart';

class LayoutBuilderApp extends StatelessWidget {
  const LayoutBuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: LayoutBuilderApply.id,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LayoutBuilderApply(),
    );
  }
}

class LayoutBuilderApply extends StatelessWidget {
  static String id = 'Layout Builder Apply';
  const LayoutBuilderApply({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Layout Builder',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return ListTileItem(index: index);
            },
          );
        },
      ),
    );
  }
}

class ListTileItem extends StatelessWidget {
  final int index;
  const ListTileItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      color: Colors.amber,
      height: 48,
      child: ListTile(
        title: Text(
          textAlign: TextAlign.center,
          '${index + 1}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
