import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/CustomWidget/custom_button.dart';
import 'package:foodapp/Ui/WelcomScreen/welcom_screen2.dart';
import 'package:foodapp/main.dart';

class WelcomScreen1 extends StatefulWidget {
  const WelcomScreen1({super.key});

  @override
  State<WelcomScreen1> createState() => _WelcomScreen1State();
}

class _WelcomScreen1State extends State<WelcomScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  height: 500.h,
                  top: -150,
                  right: 20,
                  child: Image.asset(
                    'assets/yellowcircle.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon1.png',
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
                SizedBox(
                  height: 10.h,
                ),
                Positioned(
                  top: 250,
                  left: 50,
                  bottom: 2,
                  child: Image.asset(
                    'assets/icon2.png',
                    height: 300.h,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Wellcome',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'It\'s a pleasure to meet you. We are excited that you\'re here so let\'s get started!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              CustomButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WelcomScreen2();
                      },
                    ),
                  );
                },
                height: 50.h,
                width: 300.w,
                text: 'GET STARTED',
                color: Colors.amber,
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
