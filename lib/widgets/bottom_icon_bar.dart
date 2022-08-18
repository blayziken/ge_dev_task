import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconBottomBar extends StatelessWidget {
  const IconBottomBar({Key? key, required this.text, this.icon, required this.selected, required this.onPressed, this.customIcon}) : super(key: key);
  final String text;
  final IconData? icon;
  final bool selected;
  final Widget? customIcon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onPressed,
          child: customIcon ?? Icon(icon, size: 25.sp, color: selected ? Colors.black : Colors.grey),
        ),
      ],
    );
  }
}
