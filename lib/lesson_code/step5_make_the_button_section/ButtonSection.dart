import 'package:flutter/material.dart';


/// Using our custom button class, make a horizontal row of 3 buttons.
/// Use the named parameters to customize each one.
/// ***** Note that you can call the named parameter in any order (but
/// please don't do this... it's really annoying).
class ButtonSection extends StatelessWidget {

  final Color color;

  ButtonSection({
    required this.color,
});

  @override
  Widget build(BuildContext context) {

    // TODO: Raising the difficulty level.
    return Container(
      // Start with this Container
    );
    // TODO     Return a Container with a Row in it. Set main axis size to min and main axis alignment to
    // TODO     space evenly. Then make 3 instances of your CustomButton class. Use the color variable above
    // TODO     for the color. Use call, near_me and share for the icons. The texts are CALL, ROUTE and SHARE.

  }
}