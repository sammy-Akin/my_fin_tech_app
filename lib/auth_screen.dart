import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 130.h),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Image.asset(
                  'lib/assets/images/pink-img-3.jpeg',
                  width: 350.w,
                  height: 300.h,
                ),
                Text(
                  'Add your mobile number',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'We\'ll need to confirm it by sending a text.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: 0.8.sw,
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp(
                          r'[\d\+\(\)\-\s]',
                        ),
                      ),
                    ],
                    decoration: InputDecoration(
                      labelText: 'Mobile Number',
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(255, 75, 74, 74),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45.r),
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 99, 95, 95),
                          width: 2.w,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55.r),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1.w,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.w),
                          child: Text(
                            '+',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ),
                      hintText: '(_ _ _) ',
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(305.w, 62.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    backgroundColor: const Color.fromARGB(255, 255, 47, 116),
                    elevation: 2.9.h,
                  ),
                  child: const Text(
                    'Proceed',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
