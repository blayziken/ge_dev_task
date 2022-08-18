import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';
import '../widgets/bottom_icon_bar.dart';
import '../widgets/modal_sheet.dart';
import 'home_main.dart';
import 'list.dart';
import 'refresh.dart';
import 'settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _navScreens = <Widget>[
    Home(),
    RefreshPage(),
    ListPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF9F9FA),
      appBar: AppBar(
        backgroundColor: Color(0XFFF9F9FA),
        toolbarHeight: 40.h,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(LineIcons.bell, size: 25.sp, color: Colors.black),
            SizedBox(width: 10),
            CircleAvatar(radius: 16.r, backgroundColor: Colors.grey[400]),
          ],
        ),
      ),
      body: _navScreens[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: SizedBox(
          height: 56,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconBottomBar(
                  text: "Home",
                  icon: LineIcons.wallet,
                  selected: _selectedIndex == 0,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                ),
                IconBottomBar(
                  text: "Search",
                  icon: LineIcons.syncIcon,
                  selected: _selectedIndex == 1,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                ),
                IconBottomBar(
                  text: "Add",
                  customIcon: Container(
                    height: 20.h,
                    width: 20.h,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 218, 232, 244)),
                    child: Center(
                      child: Icon(
                        LineIcons.plus,
                        size: 15.sp,
                        shadows: [BoxShadow(blurRadius: 4, color: (Colors.blue[900])!, spreadRadius: 0)],
                        color: Colors.blue[900],
                      ),
                    ),
                  ),
                  selected: false,
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
                      isScrollControlled: true,
                      builder: ((context) {
                        return HomeModalSheet();
                      }),
                      backgroundColor: Colors.white,
                    );
                  },
                ),
                IconBottomBar(
                  text: "Cart",
                  icon: LineIcons.listUl,
                  selected: _selectedIndex == 2,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                ),
                IconBottomBar(
                  text: "Calendar",
                  icon: LineIcons.cog,
                  selected: _selectedIndex == 3,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
