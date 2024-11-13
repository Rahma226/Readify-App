import 'package:flutter/cupertino.dart';
import 'package:readify/core/utils/style.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: Style.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}