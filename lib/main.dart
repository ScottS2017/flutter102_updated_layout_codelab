import 'package:flutter/material.dart';
import 'package:flutter_102_codelab_updated_2021/app/app_strings.dart';
import 'package:flutter_102_codelab_updated_2021/app/app_theme.dart';
import 'package:flutter_102_codelab_updated_2021/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /// Personal style choice: Declare a title String up here and just reuse the var below
  String _title = AppStrings.step0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,

      /// It's best to define colors, text styles, themes, etc. in your own app_theme class.
      /// See lib/app/app_theme.dart
      theme: AppTheme.themeTopLevel(),
      home: Home(),
    );
  }
}