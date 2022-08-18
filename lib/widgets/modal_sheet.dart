import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grass_econ/utils/text_style.dart';
import 'package:line_icons/line_icons.dart';
import '../utils/margin.dart';

class HomeModalSheet extends StatelessWidget {
  const HomeModalSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 650.h,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 2, 92, 237),
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            yMargin30,
            Container(
              height: 50.h,
              width: 200.w,
              child: Image.network('https://icon-library.com/images/applause-icon/applause-icon-9.jpg', color: Colors.white),
            ),
            yMargin20,
            BOLDTEXT(text: 'Hello', color: Colors.white, size: 30.sp, weight: FontWeight.w600),
            NORMALTEXT(text: '3PcGR830cjowe9349UWlepIjM23J11K', color: Colors.white54, size: 13.sp),
            yMargin30,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ModalButton(text: 'Copy', icon: LineIcons.copyAlt),
                xMargin15,
                ModalButton(text: 'Share', icon: LineIcons.alternateExternalLink),
              ],
            ),
            yMargin60,
            Container(
              height: 190.h,
              width: 200.w,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/1200px-QR_code_for_mobile_English_Wikipedia.svg.png'),
            ),
            yMargin10,
            NORMALTEXT(text: 'Your QR Code', color: Colors.white54, size: 13.sp),
          ],
        ));
  }
}

class ModalButton extends StatelessWidget {
  final String text;
  final IconData icon;
  const ModalButton({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 100.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.black45),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 18.sp),
          xMargin5,
          NORMALTEXT(text: text, color: Colors.white, size: 13.sp),
        ],
      ),
    );
  }
}
