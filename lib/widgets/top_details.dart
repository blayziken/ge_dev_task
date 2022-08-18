import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/text_style.dart';

class TopDetails extends StatelessWidget {
  final Color? boxColor, textColor;
  final String text;
  final Widget topIcon;
  final Gradient? gradient;
  const TopDetails({Key? key, this.boxColor, required this.text, this.textColor, required this.topIcon, this.gradient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.w, top: 2, bottom: 2),
      child: Container(
        width: 115.w,
        decoration: BoxDecoration(
          color: boxColor ?? Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: 0.1, blurRadius: 0.2, offset: Offset(3, 2)),
          ],
          gradient: gradient ?? null,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              topIcon,
              Spacer(),
              NORMALTEXT(
                text: text,
                size: 12.sp,
                color: textColor ?? Color.fromARGB(255, 158, 165, 174),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
