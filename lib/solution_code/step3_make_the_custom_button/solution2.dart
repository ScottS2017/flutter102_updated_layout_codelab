import 'package:flutter/material.dart';
import 'package:flutter_102_codelab_updated_2021/app/app_strings.dart';
import 'package:flutter_102_codelab_updated_2021/solution_code/step3_make_the_custom_button/CustomButton.dart';


class Solution2 extends StatelessWidget {

  String title = AppStrings.step3;

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
          child: CustomButton(
            icon: Icons.textsms,
            color: Colors.purple,
            label: "Label",
          ),
        ),
      ),
    );
  }
}