import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/CustomWidget/custom_button.dart';
import 'package:foodapp/Ui/WelcomScreen/welcom_screen3.dart';
import 'package:get/get.dart';

class WelcomScreen2 extends StatefulWidget {
  const WelcomScreen2({super.key});

  @override
  State<WelcomScreen2> createState() => _WelcomScreen2State();
}

class _WelcomScreen2State extends State<WelcomScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/g.png',
                  height: 50.h,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Tamang \nFoodServise',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/2.png',
            height: 300.h,
            width: 300.w,
          ),
          Text(
            'All Your Favorites',
            style: TextStyle(
                color: Colors.black,
                fontSize: 30.sp,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Order from the best local resturents with easy, on-demand delivery.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[700],
              ),
            ),
          ),
          CustomButton(
            onPressed: () {
              Get.to(const WelcomScreen3());
            },
            height: 50.h,
            width: 300.w,
            text: 'GET STARTED',
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
