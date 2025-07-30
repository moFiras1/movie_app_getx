import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/theme/colors_manager.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
    appBarTheme:  AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white)
    ),
      canvasColor: ColorManager.bottomNavBarColor,
      scaffoldBackgroundColor: ColorManager.bgColor,

      ////////
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xff1A1A1A),
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
        selectedItemColor: ColorManager.navBarSelectedLabelColor,
          selectedLabelStyle:TextStyle(
        fontWeight: FontWeight.w400,
        fontSize:12,
      ),
      ),
      textTheme: TextTheme(
        headlineMedium: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),
            titleSmall: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 8,
          color: Color(0xffB5B4B4)),
        titleMedium: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15)
      )
  );
}
