import 'package:flutter/material.dart';
import 'package:flutter_102_codelab_updated_2021/app/app_strings.dart';
import 'package:flutter_102_codelab_updated_2021/solution_code/step6_put_it_all_together/ButtonSection.dart';
import 'package:flutter_102_codelab_updated_2021/solution_code/step6_put_it_all_together/TextSection.dart';
import 'package:flutter_102_codelab_updated_2021/solution_code/step6_put_it_all_together/TitleSelection.dart';

class Solution5 extends StatelessWidget {

  late Color color;
  String title = AppStrings.step6;

  @override
  Widget build(BuildContext context) {

    /// The color variable needs to be instantiated inside the build method because
    /// the context it needs doesn't exist until the above context parameter is created.
    color = Theme.of(context).primaryColor;

    /// You know all of this by now. Just put it all together using your custom classes.
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),

        /// The ListView will allow everything to scroll, instead of causing a problem
        /// with overflowing on the bottom. Overflows are those black and yellow bars that
        /// tell your you're trying to shove too much stuff on the screen in that area, so
        /// it ran off the edge of the screen.
        ///
        /// Note that you could also have used a SingleChildScrollView, put a Column in it
        /// and then put the contents inside the Column.
        body: ListView(
          children: [
            Image.asset(
              'assets/step_2_images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            const TitleSelection(),
            ButtonSection(
              color: color,
            ),
            const TextSection(),
          ],
        ),
      ),
    );
  }
}