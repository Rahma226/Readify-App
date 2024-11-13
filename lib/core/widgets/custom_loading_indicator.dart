import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readify/constants.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const CircularProgressIndicator(
        color: KsecondryColor,
      ),
    );
  }
}
