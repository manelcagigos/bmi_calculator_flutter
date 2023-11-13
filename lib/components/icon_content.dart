import 'package:flutter/material.dart';
import '../constants.dart';

class MaleFemaleCard extends StatelessWidget {
  const MaleFemaleCard(
      {required this.iconMaleFemale, required this.textIcon, super.key});

  final IconData iconMaleFemale;
  final String textIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconMaleFemale,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          textIcon,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
