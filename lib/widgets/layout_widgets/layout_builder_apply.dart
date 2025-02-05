import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_app_test_1/widgets/layout_widgets/desktop_layout.dart';
import 'package:responsive_app_test_1/widgets/layout_widgets/mobile_layout.dart';

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
          log(constraints.maxWidth.toString());
          if (constraints.maxWidth <= 400) {
            return MobileLayout();
          } else if (constraints.maxWidth >= 700) {
            return DesktopLayout();
          } else {
            return Center(
              child: Text(
                'Tablet layout',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 40,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
