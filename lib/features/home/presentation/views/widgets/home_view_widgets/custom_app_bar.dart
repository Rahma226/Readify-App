import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readify/constants.dart';
import 'package:readify/core/utils/assests.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 42),
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            Image(
              image: AssetImage(Asset.logo),
              height: 20,
              width: 20,
            ),
            const SizedBox(
              width: 3,
            ),
            const Text(
              'READFIY',
              style: TextStyle(
                color: KsecondryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
