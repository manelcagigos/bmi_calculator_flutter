import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.onTap2,
    required this.buttonTitle,
  });

  final VoidCallback onTap2;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap2,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        // alignment: Alignment.center,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonStyle,
          ),
        ),
      ),
    );
  }
}