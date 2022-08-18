import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;
import '../../utils/margin.dart';
import '../../utils/text_style.dart';

class TokensTabView extends StatelessWidget {
  const TokensTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 40.h,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 35.h,
                    child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        prefixIcon: Padding(padding: EdgeInsets.only(right: 0), child: Icon(Icons.search, size: 20.sp)),
                        isDense: true,
                        filled: true,
                        fillColor: Color(0XFFECF1F4),
                        hintText: 'Search',
                        hintStyle: TextStyle(fontSize: 15.sp, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: (Colors.transparent)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: (Colors.transparent)),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                      ),
                    ),
                  ),
                ),
                xMargin10,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: SvgPicture.asset('assets/icons/up-down.svg', height: 20.sp, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          yMargin10,
          TokensCard(
            title: 'Waves',
            cardFigure: '5.0054',
            icon: Icons.check,
            logoColor: Colors.white,
            lorem: Transform.rotate(
              angle: -math.pi / 4,
              child: Container(
                height: 20.h,
                width: 20.h,
                color: Color.fromARGB(255, 2, 92, 237),
              ),
            ),
          ),
          TokensCard(
            title: 'Pigeon / My Token',
            cardFigure: '1444.04556321',
            icon: Icons.arrow_back_ios_new_sharp,
            logoColor: Color.fromARGB(255, 111, 116, 120),
            lorem: BOLDTEXT(text: 'P', color: Colors.white, size: 23.sp),
          ),
          TokensCard(
            title: 'US Dollar',
            cardFigure: '199.24',
            icon: Icons.check,
            logoColor: Color.fromARGB(255, 48, 154, 53),
            lorem: BOLDTEXT(text: '\$', color: Colors.white, size: 30.sp, weight: FontWeight.w600),
          ),
          yMargin10,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NORMALTEXT(text: 'Hidden tokens (2)', color: Colors.grey[500], size: 13.sp),
              Icon(Icons.keyboard_arrow_down_rounded, color: Colors.grey[500], size: 20.sp),
            ],
          ),
          yMargin20,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NORMALTEXT(text: 'Suspicious tokens (15)', color: Colors.grey[500], size: 13.sp),
              Icon(Icons.keyboard_arrow_down_rounded, color: Colors.grey[500], size: 20.sp),
            ],
          ),
        ],
      ),
    );
  }
}

class TokensCard extends StatelessWidget {
  final String title, cardFigure;
  final IconData icon;
  final Color logoColor;
  final Widget lorem;
  const TokensCard({Key? key, required this.title, required this.cardFigure, required this.icon, required this.logoColor, required this.lorem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 2),
      child: GestureDetector(
        child: Container(
          height: 60.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),

            border: Border.all(color: Colors.grey, width: 0.01),
            boxShadow: [BoxShadow(blurRadius: 4, color: Colors.black12, spreadRadius: 0.5)], //4, 3
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CircleAvatar(radius: 25.r, backgroundColor: logoColor, child: lorem),
                    Positioned(
                      right: 1,
                      bottom: 0,
                      child: Container(
                        height: 18.h,
                        width: 18.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Icon(icon, size: 13.sp, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                xMargin10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NORMALTEXT(text: title, size: 11.sp, color: Colors.grey[600]),
                    BOLDTEXT(
                      text: cardFigure,
                      size: 18.sp,
                      weight: FontWeight.w600,
                      spacing: -1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => new CupertinoAlertDialog(
              title: Center(child: BOLDTEXT(text: title, size: 18.sp, weight: FontWeight.w600, spacing: -1)),
              content: Center(child: BOLDTEXT(text: cardFigure, size: 18.sp, weight: FontWeight.w600, spacing: -1)),
              actions: [CupertinoDialogAction(isDefaultAction: true, child: Text("Close"))],
            ),
          );
        },
      ),
    );
  }
}
