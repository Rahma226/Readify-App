import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:readify/core/utils/style.dart';

class CustomBottun extends StatelessWidget {
  const CustomBottun(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      required this.text,
      this.fontSize});

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: Style.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.w800,
              fontSize: fontSize),
        ),
      ),
    );
  }
}
