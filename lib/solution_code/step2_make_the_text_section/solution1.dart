import 'package:flutter/material.dart';
import 'package:flutter_102_codelab_updated_2021/app/app_strings.dart';
import 'package:flutter_102_codelab_updated_2021/solution_code/step2_make_the_text_section/TextSection.dart';

class Solution1 extends StatelessWidget {

  String title = AppStrings.step2;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          padding:EdgeInsets.symmetric(vertical:  200, horizontal: 50),
          child: TextSection()),
      ),
    );
  }
}