import 'package:beauty_points/utills/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 22.w),
      decoration: BoxDecoration(
        color: const Color(0xffFCE2E7),
        borderRadius: BorderRadius.circular(48.r),
        border: Border.all(color: AppColors.kPrimaryColor, width: 1),
      ),
      child: Icon(
        Icons.arrow_back,
        color: AppColors.kPrimaryColor,
        size: 24.sp,
      ),
    );
  }
}
