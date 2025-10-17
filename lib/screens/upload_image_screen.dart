import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../route_generator.dart';
import '../utils/assets.dart';
import '../utils/color_constant.dart';
import '../widgets/custom_back_button.dart';

class UploadImageScreen extends StatelessWidget {
  const UploadImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 77.h),

            Text(
              'Upload Your Profile Image',
              style: GoogleFonts.montserrat(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimaryColor,
                height: 1.22,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.h),
            Text(
              '',
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.darkGreyColor,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.h),

            Container(
              width: double.infinity,

              padding: EdgeInsets.symmetric(vertical: 40.h),
              decoration: BoxDecoration(
                color: AppColors.kScaffoldColor,
                border: Border.all(color: const Color(0xffEFEFEF), width: 1),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(SvgAssets.upload, height: 35.h, width: 35.w),
                  SizedBox(height: 15.h),

                  Text(
                    'Upload Image',
                    style: GoogleFonts.montserrat(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darkGreyColor,
                      height: 1.22,
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),

            _buildBottomNavigation(context),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigation(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 24.h),
        child: Row(
          children: [
            CustomBackButton(),

            SizedBox(width: 10.w),

            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, availabilityScreen);
                },
                child: Text('Next'),
              ),
            ),
            SizedBox(width: 10.w),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, availabilityScreen);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 22.w),
                decoration: BoxDecoration(
                  color: const Color(0xffFCE2E7),
                  borderRadius: BorderRadius.circular(48.r),
                  border: Border.all(color: AppColors.kPrimaryColor, width: 1),
                ),
                child: Center(
                  child: Text(
                    'Skip',
                    style: GoogleFonts.montserrat(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
