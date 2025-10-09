import 'package:beauty_points/route_generator.dart';
import 'package:beauty_points/utills/assets.dart';
import 'package:beauty_points/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:beauty_points/utills/color_constant.dart';
import 'package:flutter_svg/svg.dart';

class GenderServiceScreen extends StatelessWidget {
  const GenderServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 77.h),

            Expanded(
              child: Column(
                children: [
                  Text(
                    'Target Gender for Services',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                      color: AppColors.textPrimaryColor,
                      height: 1.22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Enter the OTP code we just sent you on your registered Email/ Phone Number',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: AppColors.darkGreyColor,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 30.h),

                  _buildGenderCard(
                    title: "Men's Services",
                    icon: SvgAssets.men,
                    isSelected: false,
                    onTap: () {},
                  ),
                  SizedBox(height: 15.h),
                  _buildGenderCard(
                    title: "Women's Services",
                    icon: SvgAssets.women,
                    isSelected: false,
                    onTap: () {},
                  ),
                ],
              ),
            ),

            Row(
              children: [
                CustomBackButton(),

                SizedBox(width: 10.w),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, locationScreen);
                    },
                    child: Text('Next'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
      
    );
  }

  Widget _buildGenderCard({
    required String title,
    required String icon,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffFBE9EA),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon, height: 32.h, width: 32.w),
            SizedBox(height: 10.h),

            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17.sp,
                color: AppColors.textPrimaryColor,
                height: 1.22,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
