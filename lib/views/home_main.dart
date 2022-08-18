import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import '../utils/margin.dart';
import '../utils/text_style.dart';
import '../widgets/tab_views/tab.dart';
import '../widgets/top_details.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BOLDTEXT(text: 'Wallet', size: 13.sp, color: Color(0XFFACB5BF)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BOLDTEXT(
                text: 'Mobile Team',
                size: 22.sp,
                weight: FontWeight.w700,
                spacing: -1.1,
              ),
              xMargin5,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(LineIcons.angleUp, size: 8.sp),
                  Icon(LineIcons.angleDown, size: 8.sp),
                ],
              ),
            ],
          ),
          yMargin10,
          Expanded(
            flex: 0,
            child: Container(
              height: 75.h,
              // color: Colors.red,
              child: ListView(
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                children: [
                  TopDetails(
                    topIcon: Icon(LineIcons.qrcode, size: 25.sp, color: Colors.white),
                    text: 'Your address',
                    textColor: Color.fromARGB(255, 186, 193, 201),
                    // boxColor: Colors.blueAccent,
                    gradient: LinearGradient(colors: [(Colors.blueAccent[400])!, (Colors.blue[700])!]),
                  ),
                  TopDetails(
                    topIcon: Icon(LineIcons.user, size: 20.sp),
                    text: 'Aliases',
                  ),
                  TopDetails(
                    topIcon: SizedBox(
                      height: 20.h,
                      width: 30.h,
                      child: Switch(
                        value: true,
                        onChanged: (value) {},
                        activeTrackColor: Color.fromARGB(255, 80, 113, 245),
                        activeColor: Colors.white,
                      ),
                    ),
                    text: 'Balance',
                  ),
                  TopDetails(
                    topIcon: SvgPicture.asset('assets/icons/resize.svg', height: 20.sp),
                    text: 'Lorem',
                  ),
                  // ),
                ],
              ),
            ),
          ),
          yMargin10,
          HomeTabView(),
        ],
      ),
    );
  }
}
