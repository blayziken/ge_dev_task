import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grass_econ/widgets/tab_views/token_view.dart';
import '../../utils/margin.dart';
import 'leasing_view.dart';

class HomeTabView extends StatelessWidget {
  const HomeTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TabBar(
              padding: EdgeInsets.zero,
              isScrollable: true,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Color.fromARGB(255, 12, 24, 185), width: 2), // Color(0xDD613896)
                insets: EdgeInsets.fromLTRB(40.0, 0.0, 60.0, 10.0),
              ),
              labelStyle: GoogleFonts.poppins(fontSize: 13.sp, fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.grey[700],
              unselectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400),
              indicatorColor: Colors.red,
              indicatorWeight: 2,
              tabs: [
                Tab(text: 'Tokens'),
                Tab(text: 'Leasing'),
              ],
            ),
            yMargin5,
            Expanded(
              child: Container(
                child: TabBarView(
                  children: [
                    TokensTabView(),
                    LeasingTabView(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
