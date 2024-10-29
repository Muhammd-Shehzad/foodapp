import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/CustomWidget/custom_button.dart';
import 'package:foodapp/Ui/Auth/Signin/sign_in.dart';
import 'package:get/get.dart';

class WelcomScreen4 extends StatefulWidget {
  const WelcomScreen4({super.key});

  @override
  State<WelcomScreen4> createState() => _WelcomScreen4State();
}

class _WelcomScreen4State extends State<WelcomScreen4> {
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
            'assets/4.png',
            height: 300.h,
            width: 300.w,
          ),
          Text(
            'Choose your food',
            style: TextStyle(
                color: Colors.black,
                fontSize: 30.sp,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Easily find your type of food craving and you\'ll get delivery in wide range.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[700],
              ),
            ),
          ),
          CustomButton(
            onPressed: () {
              Get.to(const SignIn());
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
