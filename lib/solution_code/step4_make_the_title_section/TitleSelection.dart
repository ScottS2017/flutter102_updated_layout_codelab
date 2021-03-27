import 'package:flutter/material.dart';
import 'package:flutter_102_codelab_updated_2021/app/app_strings.dart';

class TitleSelection extends StatelessWidget {

  const TitleSelection();

  /// This is going to show the name of the place being featured, it's location and
  /// rating (in stars).
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        mainAxisSize: MainAxisSize.min,

        /// A Row's or a Column's default alignment is start, so you don't need
        /// to specify that.
        children: [

          /// Remember from Step 1, you need an Expanded when nesting Rows and
          /// Columns or things blow up. Here, we're nesting a Column inside of a Row.
          ///
          /// Since it's first, this will be on the left of the Row.
          /// Being an Expanded, it's going to make its child stretch as far along
          /// the main axis (horizontal) as it can.
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// This is the top child of the Column
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    AppStrings.oeschinenLake,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                /// The second child of the Column
                Text(
                  AppStrings.kandersteg,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),

            /// Closing the Expanded, now we have finished with the first child of the Row.
            /// Because this is an Expanded, it starts on the left and then shoves everything
            /// else over to the right, as far as it can.
          ),

          /// The second child in the Row is shoved up against the last one.
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),

          /// The last child in the Row is "stuffed in the corner" (to the right)
          Text('41'),
        ],
      ),
    );
  }
}