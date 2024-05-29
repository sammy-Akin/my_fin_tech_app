import 'package:banking_app_may/auth_screen.dart';
import 'package:banking_app_may/login_screen.dart';
import 'package:banking_app_may/onboarding_screen.dart';
import 'package:banking_app_may/verify_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(372, 812),
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: VerifyScreen(),
        );
      },
    );
  }
}
