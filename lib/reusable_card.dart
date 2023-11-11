import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  const ReusableCard({required this.colores, this.cardChild, this.onPress, super.key});

  final Color colores;
  final Widget? cardChild;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress as void Function()?,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colores,
        ),
        child: cardChild,
      ),
    );
  }
}