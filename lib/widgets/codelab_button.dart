import 'package:flutter/material.dart';
import 'package:flutter_102_codelab_updated_2021/widgets/custom_border_button.dart';

class CodelabButton extends StatelessWidget {
  const CodelabButton({
    Key? key,
    required this.text,
    required this.page,
  }) : super(key: key);

  final String text;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return CustomBorderButton(
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => page,
        ),
      ),
      child: Text(text),
    );
  }
}