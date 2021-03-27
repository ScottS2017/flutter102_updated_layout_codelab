import 'package:flutter/material.dart';
import 'package:flutter_102_codelab_updated_2021/app/app_colors.dart';

class CustomBorderButton extends StatelessWidget {
  const CustomBorderButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 2,
      child: InkWell(
        onTap: onPressed,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [
                Theme.of(context).accentColor,
                Theme.of(context).primaryColor,
              ],
              begin: Alignment(-2, -1.75),
              end: Alignment(2, 1.75),
              stops: [0, 1],
            ),
          ),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: Ink(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                height: 48,
                child: FittedBox(
                  child: DefaultTextStyle.merge(
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.normal,
                      color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.95),
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: child,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
