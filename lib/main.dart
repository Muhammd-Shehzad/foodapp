import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/Ui/WelcomScreen/welcom_screen1.dart';
import 'package:get/get.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: const Size(360, 690),
    splitScreenMode: true,
    minTextAdapt: true,
    builder: (context, child) {
      return const GetMaterialApp(
        home: WelcomScreen1(),
      );
    },
  ));
}
