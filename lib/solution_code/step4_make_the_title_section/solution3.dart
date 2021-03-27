import 'package:flutter/material.dart';
import 'package:flutter_102_codelab_updated_2021/app/app_strings.dart';
import 'package:flutter_102_codelab_updated_2021/solution_code/step4_make_the_title_section/TitleSelection.dart';


class Solution3 extends StatelessWidget {

  String title = AppStrings.step4;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          child: Container(
            height: 120,
            width: double.infinity,
            child: TitleSelection()),
        ),
      ),
    );
  }
}