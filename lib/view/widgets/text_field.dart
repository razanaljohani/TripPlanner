import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.labelText,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.obscureText,
    required this.validator,
    required this.controller,
    required String hintText,
  });

  final Widget prefixIcon;
  final Widget suffixIcon;
  final String labelText;
  final bool obscureText;
  final Function validator;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: labelText,
              prefixIcon: Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: prefixIcon,
              ),
              suffixIcon: Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: suffixIcon,
              ),
            )));
  }
}
