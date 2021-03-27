import 'package:flutter/material.dart';
import 'package:flutter_102_codelab_updated_2021/lesson_code/step6_put_it_all_together/CustomButton.dart';

class ButtonSection extends StatelessWidget {

  final Color color;

  ButtonSection({
    required this.color,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(color: color, icon: Icons.call, label: 'CALL'),
          CustomButton(color: color, icon: Icons.near_me, label: 'ROUTE'),
          CustomButton(color: color, icon: Icons.share, label: 'SHARE'),
        ],
      ),
    );
  }
}