import 'package:flutter/material.dart';
import 'package:learning_getx/consts/colors.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final Function()? onTap;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: AllColors.black,
          borderRadius: BorderRadius.circular(40),
        ),
        child: icon,
      ),
    );
  }
}
