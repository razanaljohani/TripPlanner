import 'package:flutter/material.dart';
import 'package:trip_planner/view/widgets/text.dart';

class HomeButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;
  final Color color;
  final Color textColors;
  final FontWeight;
  final underLine;
  final double fontSize;

  const HomeButton({
    required this.onPressed,
    required this.child,
    Key? key,
    required this.color,
    this.FontWeight,
    this.underLine,
    required this.fontSize,
    required this.textColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
        minimumSize: const Size(120, 50),
        shape: (RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        )),
      ),
      child: child,
      // child: TextWidget(
      //   color: textColors,
      //   text: Widget,
      //   fontSize: fontSize,
      //   fontWeight: FontWeight,
      //   underLine: underLine,
      // ),
    );
  }
}
