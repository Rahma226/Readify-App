import 'package:flutter/material.dart';
import 'package:readify/constants.dart';
import 'package:readify/core/utils/app_router.dart';

void main() {
  runApp(const Readify());
}

class Readify extends StatelessWidget {
  const Readify ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: KprimaryColor,
        textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: KPrimaryFontFamily,
        ),
      ),
     
    );
  }
}

