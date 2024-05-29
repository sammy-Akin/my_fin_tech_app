import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          Container(
            margin: EdgeInsets.only(top: 100.0.h),
            child: Column(
              children: [
                Image.asset(
                  'lib/assets/images/pink-img-5.jpeg',
                  height: 350.h,
                  width: 350.w,
                ),
                Text(
                  'Send Money',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                const Text(
                  'Send money to all networks and banks\n right from your Pay Fast\n account.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30.sp,
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotWidth: 15.w,
                    dotHeight: 10.h,
                    activeDotColor: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 40.sp,
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
          Container(
            margin: EdgeInsets.only(top: 100.0.h),
            child: Column(
              children: [
                Image.asset(
                  'lib/assets/images/pink-img-1.jpeg',
                  height: 350.h,
                  width: 280.w,
                ),
                Text(
                  'Pay Bills',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                const Text(
                  'Pay Bills such as Electricity, Water bill, TV\n subscriptions etc.\n Buy airtime & Bundles.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30.sp,
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotWidth: 15.w,
                    dotHeight: 10.h,
                    activeDotColor: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 40.sp,
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
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 90.0.h),
            child: Column(
              children: [
                Image.asset(
                  'lib/assets/images/pink-img-2.jpeg',
                  height: 350.h,
                  width: 280.w,
                ),
                Text(
                  'Pay Merchants',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                const Text(
                  'Even with insufficient balance, Pay by\n Phone at Merchants with Pay Fast\n Accounts.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30.sp,
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotWidth: 15.w,
                    dotHeight: 10.h,
                    activeDotColor: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 40.sp,
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
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
