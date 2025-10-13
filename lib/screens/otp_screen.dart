import 'package:beauty_near_sp/route_generator.dart';
import 'package:beauty_near_sp/utils/assets.dart';
import 'package:beauty_near_sp/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100.h),
              Center(
                child: SvgPicture.asset(
                  SvgAssets.logo,
                  width: 145.w,
                  height: 130.h,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 50.h),
              Center(
                child: Text(
                  'Enter OTP',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimaryColor,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Center(
                child: Text(
                  'Enter the OTP code we just sent you on your\nregistered Email/ Phone Number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.darkGreyColor,
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              Center(
                child: Pinput(
                  mainAxisAlignment: MainAxisAlignment.center,
                  separatorBuilder: (index) => SizedBox(width: 15.w),
                  length: 4,
                  defaultPinTheme: PinTheme(
                    width: 70.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: AppColors.strokeColor),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    textStyle: TextStyle(fontSize: 16.sp),
                  ),
                  focusedPinTheme: PinTheme(
                    width: 70.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: AppColors.kPrimaryColor),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    textStyle: TextStyle(fontSize: 16.sp),
                  ),
                  submittedPinTheme: PinTheme(
                    width: 70.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: AppColors.kPrimaryColor),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    textStyle: TextStyle(fontSize: 16.sp),
                  ),
                  onChanged: (pin) {},
                  onCompleted: (pin) {},
                ),
              ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Didn’t get OTP?',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.darkGreyColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      ' Resend OTP',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, genderServiceScreen);
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
