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
      mainAxisSize: MainAxisSize.min,

      /// The Icon is first, so it gets aligned wherever the mainAxisAlignment is set to.
      /// The default for Row and Column is "start", meaning top for Column
      /// and left for a Row. But here, we're centering all of the children vertically within
      /// the Column. Since the Icon is first, it ends up on top.
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),

        /// Make a new "box" for the text.
        Container(

          /// Margin is around the outside of the Container. If we had used padding, that would
          /// have been located inside of it.
          ///
          /// Think of it this way: Margin is the space between boxes and padding is the bubble wrap
          /// inside your boxes... it pads the thing inside the box so it won't break if you drop the box.
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,

            /// The TextStyle is where you set things like size, weight, italics and color.
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
