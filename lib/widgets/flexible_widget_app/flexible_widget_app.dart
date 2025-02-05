import 'package:flutter/material.dart';
import 'package:responsive_app_test_1/widgets/flexible_widget_app/flexible_widget_apply.dart';

class FlexibleWidgetApp extends StatelessWidget {
  const FlexibleWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flexible App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            FlexibleWidgetApply.id,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
        ),
        body: FlexibleWidgetApply(),
      ),
    );
  }
}
