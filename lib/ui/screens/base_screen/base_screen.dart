import 'package:calkitna_mobile_app/core/constants/colors.dart';
import 'package:calkitna_mobile_app/ui/screens/Home/home_screen.dart';
import 'package:calkitna_mobile_app/ui/screens/other/other_screen.dart';
import 'package:calkitna_mobile_app/ui/screens/profile/profile_screen.dart';
import 'package:calkitna_mobile_app/ui/screens/speedometer/speedometer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BaseScreen extends StatefulWidget {
  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  List list = [
    SpeedometerScreen(),
    HomeScreen(),
    OtherScreen(),
    ProfileScreen(),
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[select],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(),
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: select,
        onTap: (index) {
          setState(() {
            select = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/static_assets/speedometer.svg',
                color: select == 0 ? primaryColor : lightPrimary,
                height: 25,
                width: 25,
              ),
              label: 'Recent'),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/static_assets/home.svg",
              color: select == 1 ? primaryColor : lightPrimary,
              height: 25,
              width: 25,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/static_assets/diagram.svg',
                color: select == 2 ? primaryColor : lightPrimary,
                height: 25,
                width: 25,
              ),
              label: 'Dailpad'),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/static_assets/person.svg',
              color: select == 3 ? primaryColor : lightPrimary,
              height: 25,
              width: 25,
            ),
            label: 'Settings',
          ),
        ],
        selectedLabelStyle: const TextStyle(fontSize: 12),
      ),
    );
  }
}
