import 'package:flutter/material.dart';
import 'package:flutter_102_codelab_updated_2021/general_points.dart';
import 'package:flutter_102_codelab_updated_2021/lesson_code/step1_auto_resizing_image/exercise1.dart';
import 'package:flutter_102_codelab_updated_2021/lesson_code/step2_make_the_text_section/exercise2.dart';
import 'package:flutter_102_codelab_updated_2021/lesson_code/step3_make_the_custom_button/exercise3.dart';
import 'package:flutter_102_codelab_updated_2021/lesson_code/step4_make_the_title_section/exercise4.dart';
import 'package:flutter_102_codelab_updated_2021/lesson_code/step5_make_the_button_section/exercise5.dart';
import 'package:flutter_102_codelab_updated_2021/lesson_code/step6_put_it_all_together/exercise6.dart';
import 'package:flutter_102_codelab_updated_2021/solution_code/step2_make_the_text_section/solution1.dart';
import 'package:flutter_102_codelab_updated_2021/solution_code/step3_make_the_custom_button/solution2.dart';
import 'package:flutter_102_codelab_updated_2021/solution_code/step4_make_the_title_section/solution3.dart';
import 'package:flutter_102_codelab_updated_2021/solution_code/step5_make_the_button_section/solution4.dart';
import 'package:flutter_102_codelab_updated_2021/solution_code/step6_put_it_all_together/solution5.dart';
import 'package:flutter_102_codelab_updated_2021/widgets/codelab_button.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 102 - Layout'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 16,
          ),
          CodelabButton(text: 'General Points', page: GeneralPoints(title: 'General Points')),
          Expanded(
            child: Row(
              children: <Widget>[
                // Exercises
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CodelabButton(text: 'Exercises 1', page: Exercise1(title: 'Exercises, Step 1')),
                      CodelabButton(text: 'Exercises 2', page: Exercise2()),
                      CodelabButton(text: 'Exercises 3', page: Exercise3()),
                      CodelabButton(text: 'Exercises 4', page: Exercise4()),
                      CodelabButton(text: 'Exercises 5', page: Exercise5()),
                      CodelabButton(text: 'Exercises 6', page: Exercise6()),
                    ],
                  ),
                ),
                // Solutions
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CodelabButton(text: 'Solutions 1', page: Solution1()),
                      CodelabButton(text: 'Solutions 2', page: Solution2()),
                      CodelabButton(text: 'Solutions 3', page: Solution3()),
                      CodelabButton(text: 'Solutions 4', page: Solution4()),
                      CodelabButton(text: 'Solutions 5', page: Solution5()),
                      SizedBox(
                        height: 48,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
