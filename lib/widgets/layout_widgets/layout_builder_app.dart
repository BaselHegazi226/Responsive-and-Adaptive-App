import 'package:flutter/material.dart';
import 'package:responsive_app_test_1/widgets/layout_widgets/layout_builder_apply.dart';

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
