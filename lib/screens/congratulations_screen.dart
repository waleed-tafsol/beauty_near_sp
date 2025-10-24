import 'package:beauty_near_sp/screens/bot_nav_bar_page.dart';
import 'package:beauty_near_sp/utils/assets.dart';
import 'package:beauty_near_sp/utils/color_constant.dart';
import 'package:beauty_near_sp/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          children: [
            SizedBox(height: 237.h),
            Image.asset(PngAssets.beautyNear),

            SizedBox(height: 50.h),
            Text(
              context.localization.congratulations,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimaryColor,
              ),
            ),
            SizedBox(height: 5.h),

            Text(
              context.localization.accountCreatedSuccessfully,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.textGreyColor,
              ),
            ),
            SizedBox(height: 50.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    BotNavPage.routeName,
                    (_) => false,
                  );
                },
                child: Text(context.localization.proceedToApp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
