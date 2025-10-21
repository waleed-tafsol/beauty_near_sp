import 'dart:io';
import 'package:beauty_near_sp/screens/bot_nav_bar_page.dart';
import 'package:beauty_near_sp/view_models/auth_view_model.dart';
import 'package:beauty_near_sp/widgets/dialog%20box/success_dialog_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../route_generator.dart';
import '../utils/assets.dart';
import '../utils/color_constant.dart';
import '../widgets/custom_back_button.dart';
import '../widgets/bottom_sheets/image_selection_bottom_sheet.dart';

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

            GestureDetector(
              onTap: () async {
                await context.read<AuthViewModel>().setProfileImagePath(
                  context: context,
                );
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 40.h),
                decoration: BoxDecoration(
                  color: AppColors.kScaffoldColor,
                  border: Border.all(color: const Color(0xffEFEFEF), width: 1),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: context.read<AuthViewModel>().getProfileImagePath != null
                    ? Column(
                        children: [
                          ClipOval(
                            child: Container(
                              width: 200.w,
                              height: 200.h,
                              decoration: BoxDecoration(
                                //  borderRadius: BorderRadius.circular(12.r),
                                image: DecorationImage(
                                  image: FileImage(
                                    File(
                                      context
                                          .watch<AuthViewModel>()
                                          .getProfileImagePath!,
                                    ),
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15.h),
                          Text(
                            'Change Image',
                            style: GoogleFonts.montserrat(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darkGreyColor,
                              height: 1.22,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            SvgAssets.upload,
                            height: 35.h,
                            width: 35.w,
                          ),
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
                  showSuccessDialog(
                    screenContext: context,
                    desc: 'Your Account Successfully\nCreated',
                    onSuccess: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        BotNavPage.routeName,
                        (route) => false,
                      );
                    },
                  );
                },
                child: Text('Next'),
              ),
            ),
            SizedBox(width: 10.w),
            GestureDetector(
              onTap: () {
                showSuccessDialog(
                  screenContext: context,
                  desc: 'Your Account Successfully\nCreated',
                  onSuccess: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      BotNavPage.routeName,
                      (route) => false,
                    );
                  },
                );
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
