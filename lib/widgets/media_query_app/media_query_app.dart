import 'package:flutter/material.dart';
import 'package:responsive_app_test_1/widgets/media_query_app/media_query_apply.dart';

class MediaQueryApp extends StatelessWidget {
  const MediaQueryApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MediaQueryApply.id,
      home: MediaQueryApply(),
    );
  }
}
