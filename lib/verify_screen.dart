import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 100.h),
        child: Center(
          child: Column(
            children: [
              Text(
                'Verify',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.sp,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text(
                'Please enter the 6 digit one time\n code to activate your account!.',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 60.h,
              ),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(6, (index) {
                    return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: SizedBox(
                          height: 40.h,
                          width: 40.w,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r),
                                borderSide: BorderSide(
                                  color: Colors.pink,
                                  width: 2.w,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7.r),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 1.w,
                                ),
                              ),
                            ),
                          ),
                        ));
                  }),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text(
                'Didn\'t receive a Code?',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
                child: const Text(
                  'Resend Code!',
                ),
              ),
              SizedBox(
                height: 50.h,
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
    );
  }
}
