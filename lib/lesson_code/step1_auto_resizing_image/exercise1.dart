import 'package:flutter/material.dart';

class Exercise1 extends StatelessWidget {
  Exercise1({
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

      // TODO 1)  For the Scaffold's body, create a Container that is the height of the available space
      // TODO      but the full width of the screen.

      // TODO 2) In it, create a Column, center the contents along the mainAxis and set its size to minimum.

      // TODO 3) The first and last Widgets in the Column will be Spacers, each with a flex of ten.
      // TODO      Add them now and then hit enter a number of times to create some working room between them.

      // TODO 4) For the Image to be resizable we need to use an Expanded. Set the flex to the imageResizeAdjustment variable.

      // TODO 5) Inside the Expanded, add an Image using its asset constructor.
      // TODO      You pass in a string, the path to the image relative to the lib directory.
      // TODO      Here that would be 'assets/step_2_images/lake.jpg' ... but we have that assigned
      // TODO      to a resource string in the AppStrings class, so use AppStrings.sampleImage instead.

      // TODO 6) To make a fixed gap of 10dp between the Image and its caption, put a SizedBox after the Expanded.
      // TODO      Make the width 1 and use the spaceBetweenImageAndText variable for the height.

      // TODO 7) Add caption text. Use AppStrings.sampleImageCaption for the string, make it size 10 and italic.
    );
  }
}
