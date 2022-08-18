import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../utils/margin.dart';
import '../../utils/text_style.dart';

class LeasingTabView extends StatelessWidget {
  const LeasingTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AvailableBalance(),
          yMargin20,
          Container(
            height: 45.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey, width: 0.01),
              boxShadow: [BoxShadow(blurRadius: 4, color: Colors.black12, spreadRadius: 0.5)], //4, 3
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BOLDTEXT(text: 'View history', size: 16.sp, weight: FontWeight.w600, spacing: -0.5),
                ],
              ),
            ),
          ),
          yMargin20,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NORMALTEXT(text: 'Active now (2)', color: Colors.grey[500], size: 13.sp),
              Icon(Icons.keyboard_arrow_down_rounded, color: Colors.grey[500], size: 20.sp),
            ],
          ),
        ],
      ),
    );
  }
}

class AvailableBalance extends StatelessWidget {
  const AvailableBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey, width: 0.01),
        boxShadow: [BoxShadow(blurRadius: 4, color: Colors.black12, spreadRadius: 0.5)], //4, 3
      ),
      child: Padding(
        padding: EdgeInsets.all(15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            NORMALTEXT(text: 'Available balance', size: 10.sp, color: Color(0XFFACB5BF)),
            BOLDTEXT(text: '105.0054', size: 20.sp, weight: FontWeight.w600, spacing: -1),
            yMargin10,
            SizedBox(
              width: 300,
              child: LinearPercentIndicator(
                padding: EdgeInsets.all(0),
                percent: 0.85,
                lineHeight: 7.h,
                barRadius: Radius.circular(10),
                progressColor: Color.fromARGB(255, 80, 113, 245),
                backgroundColor: Color.fromARGB(255, 179, 193, 248),
              ),
            ),
            yMargin20,
            Sample(),
            Sample(),
            Spacer(),
            Container(
              height: 40.h,
              width: double.infinity,
              color: Color.fromARGB(255, 239, 242, 253),
              child: Center(
                child: BOLDTEXT(
                  text: 'Start Lease',
                  size: 12.sp,
                  weight: FontWeight.w600,
                  color: Color.fromARGB(255, 60, 89, 205),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Sample extends StatelessWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BOLDTEXT(text: '1 435.00355601', size: 13.sp, weight: FontWeight.w600, spacing: -1),
            Spacer(),
            Row(
              children: [
                NORMALTEXT(text: 'Leased', size: 12.sp, color: Color(0XFFACB5BF)),
                xMargin5,
                CircleAvatar(radius: 5.r, backgroundColor: Color.fromARGB(255, 80, 113, 245)),
              ],
            ),
          ],
        ),
        Divider(color: Color.fromARGB(255, 226, 225, 225), thickness: 1),
      ],
    );
  }
}
