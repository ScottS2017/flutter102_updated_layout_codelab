import 'package:flutter/material.dart';
import 'package:flutter_102_codelab_updated_2021/app/app_strings.dart';

class SolutionAutoResizingImageExample extends StatelessWidget {
  /// Personal style choice: Declare a title String up here and just use the var below
  String title = AppStrings.step1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        /// It's always better to use a resource file for colors and refer to it, but this is just a basic example.
        primarySwatch: Colors.blue,
      ),
      home: AutoResizingImageExample(title: title),
    );
  }
}

class AutoResizingImageExample extends StatelessWidget {
  AutoResizingImageExample({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  final int imageResizeAdjustment = 15;
  final double spaceBetweenImageAndText = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(title),
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(flex: 10),
            Expanded(
              /// This controls the image's size relative to its parent Column.
              /// Both the Column and image will flex their sizes as needed.
              flex: imageResizeAdjustment,

              child: Image.asset(
                'assets/step_2_images/lake.jpg',
              ),
            ),
            SizedBox(
              width: 1,
              height: spaceBetweenImageAndText,
            ),
            Text(
              AppStrings.sampleImageCaption,
              style: TextStyle(
                fontSize: 10,
                fontStyle: FontStyle.italic,
              ),
            ),
            Spacer(flex: 10),
          ],
        ),
      ),
    );
  }
}
