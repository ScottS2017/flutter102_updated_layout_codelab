import 'package:flutter/material.dart';

class GeneralPoints extends StatelessWidget {
  String title;

  String _title;

  GeneralPoints({
    Key? key,
    required this.title,
  })  : _title = title,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    /// The Scaffold gives you easy access to an AppBar, BottomNavigation,
    /// Floating Action Button, Drawer and more.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(_title),
      ),

      backgroundColor: Colors.white,
      body: PageContent(),
    );
  }
}

/// Use Stateless Widgets whenever possible. It a much simpler way to do things
/// and you can use other state management systems to take care of state.
class PageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            /// The below media query will return the screen dimensions.
            ///  Since we already need an Expanded to make this work, we can make the width of 2 of these
            ///  Containers one-third of the screen width and then make the third Container use all leftover space.
            Container(
              height: 100,

              /// This gets the screen width and divides it by three.
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.purple,
            ),
            Container(
              height: 100,

              /// This gets the screen width and divides it by three.
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.red,
            ),

            /// You need an Expanded when nesting Rows and Columns or thing blow up.
            /// It causes issues with "Unbounded" size limits (called "Constraints")
            ///
            /// Also, we want to be _positive_ this will use up the remainder of the screen.
            /// This is another reason to use an Expanded here instead of the MediaQuery technique.
            Expanded(
              child: Container(
                height: 100,

                /// No width specification is needed since the Expanded will eat up everything that's left over.
                /// >>>>>>> Even if we did put a width here, it would be ignored. <<<<<<<
                color: Colors.green,
              ),
            ),
          ],
        ),

        /// This is one way of creating separation between two items. It's an empty box, 100dp high.
        /// Another way to achieve the same thing is to use a margin (below).
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 100,
        ),

        /// Using a margin to gain 100dp of separation.
        /// Also, we're using double.infinity to achieve the same effect as "match_parent" in Android.
        Container(
          margin: EdgeInsets.only(top: 0, bottom: 100, right: 0, left: 0),
          height: 10,
          width: double.infinity,
          color: Colors.brown,
        ),

        /// This shows how to use a simple decoration to place a border around your Container.
        /// Be sure to leave space all the way around the item to ensure the border won't be lost
        /// at the screen edge.
        Container(
          width: MediaQuery.of(context).size.width * .9,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(width: 2.0, color: const Color(0x55000000)),
          ),
        ),

        /// Using an Expanded again, this time to eat up all leftover space at the bottom.
        Expanded(
          child: SizedBox(
            width: 1,
            height: 1,
          ),
        ),
      ],
    );
  }
}
