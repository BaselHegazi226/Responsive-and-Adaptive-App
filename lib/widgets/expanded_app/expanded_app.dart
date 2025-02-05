import 'package:flutter/material.dart';
import 'package:responsive_app_test_1/widgets/expanded_app/expaned_apply.dart';

class ExpandedApp extends StatelessWidget {
  const ExpandedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expanded App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            ExpandedWidgetApply.id,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
        ),
        body: ExpandedWidgetApply(),
      ),
    );
  }
}
