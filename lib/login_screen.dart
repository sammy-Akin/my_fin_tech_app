import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pay Fast',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0.sp,
              ),
            ),
            SizedBox(
              height: 15.0.h,
            ),
            Text(
              'Forget Everything\n You Know About\nBanking',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0.sp,
                letterSpacing: 1.0,
                wordSpacing: 1.0,
                height: 1.3.h,
              ),
            ),
            Image.asset(
              'lib/assets/images/pink-img-4.jpeg',
              width: 200.0.w,
              height: 200.0.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(209.w, 49.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.r),
                ),
                backgroundColor: const Color.fromARGB(255, 255, 47, 116),
                elevation: 2.9.h,
              ),
              child: const Text(
                'Log in',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(209.w, 49.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.r),
                ),
                backgroundColor: const Color.fromARGB(255, 255, 47, 116),
                elevation: 2.9.h,
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
