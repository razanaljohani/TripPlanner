import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip_planner/view/widgets/text.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color color;
  final FontWeight;
  final underLine;
  final double fontSize;
  final Color textColor;

  const AuthButton({
    required this.onPressed,
    required this.text,
    Key? key,
    required this.color,
    this.FontWeight,
    this.underLine,
    required this.fontSize,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
        minimumSize: const Size(360, 50),
        shape: (RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        )),
      ),
      child: TextWidget(
        color: textColor,
        text: text,
        fontSize: fontSize,
        fontWeight: FontWeight,
        underLine: underLine,
      ),
    );
  }
}
