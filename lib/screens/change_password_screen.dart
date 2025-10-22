import 'package:beauty_near_sp/utils/extensions.dart';
import 'package:beauty_near_sp/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../utils/color_constant.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: context.localization.changePassword),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.h),
              Text(
                context.localization.currentPassword,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.textPrimaryColor,
                ),
              ),
              SizedBox(height: 8.h),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: context.localization.password,
                  suffixIcon: Icon(Iconsax.eye),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                context.localization.newPassword,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.textPrimaryColor,
                ),
              ),
              SizedBox(height: 8.h),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: context.localization.password,
                  suffixIcon: Icon(Iconsax.eye),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                context.localization.confirmNewPassword,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.textPrimaryColor,
                ),
              ),
              SizedBox(height: 8.h),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: context.localization.password,
                  suffixIcon: Icon(Iconsax.eye),
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text(context.localization.changePassword),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
