import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  /// We're being passed a Color, Icon and String.
  /// Now, turn them into a custom button.
  final Color color;
  final IconData icon;
  final String label;

  CustomButton({
    required this.color,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Start with this Column
      ],
    );
    // TODO 1) Return a Column that has its main axis size set to minimum and its main axis alignment to center.

    // TODO 2) The first child will be an Icon. Use the passed in variables above for the icon and color.

    // TODO 3) Create a Container to hold the Text. Give it margin or padding of 8 but only along the top edge.

    // TODO 4) Use the passed in label for the text. Set its size to 12, weight to w400 and use the passed in color.
  }
}
