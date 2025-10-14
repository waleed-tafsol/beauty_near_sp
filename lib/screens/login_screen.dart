import 'package:beauty_near_sp/route_generator.dart';
import 'package:beauty_near_sp/screens/bot_nav_bar_page.dart';
import 'package:beauty_near_sp/utils/assets.dart';
import 'package:beauty_near_sp/utils/color_constant.dart';
import 'package:beauty_near_sp/view_models/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../utils/enums.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                  'Login to Your Account',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimaryColor,
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              // _buildUserTypeSelector(),
              // SizedBox(height: 32.h),
              Text(
                'Email Address',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.textPrimaryColor,
                ),
              ),
              SizedBox(height: 8.h),
              TextFormField(
                decoration: InputDecoration(hintText: 'Your Email'),
              ),
              SizedBox(height: 20.h),
              Text(
                'Password',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.textPrimaryColor,
                ),
              ),
              SizedBox(height: 8.h),
              TextFormField(decoration: InputDecoration(hintText: 'Password',
              suffixIcon: Icon(Iconsax.eye)
              )),
              SizedBox(height: 8.h),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: AppColors.textPrimaryColor,
                  ),
                ),
              ),
              SizedBox(height: 24.h),
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
                  child: Text('Login'),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 24.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account ?',
              style: TextStyle(fontSize: 14.sp, color: AppColors.darkGreyColor),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, signupScreen);
              },
              child: Text(
                ' Sign Up',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserTypeSelector() {
    return Consumer<AuthViewModel>(
      builder: (context, viewModel, _) {
        final userType = viewModel.userType;
        return Row(
          spacing: 10.w,
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: userType == UserType.customer
                      ? null
                      : Colors.white,
                  foregroundColor: userType == UserType.customer
                      ? null
                      : AppColors.kBlackText,
                ),
                onPressed: () => viewModel.setUserType(UserType.customer),
                child: Text('Customer'),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: userType == UserType.serviceProvider
                      ? null
                      : Colors.white,
                  foregroundColor: userType == UserType.serviceProvider
                      ? null
                      : AppColors.kBlackText,
                ),
                onPressed: () =>
                    viewModel.setUserType(UserType.serviceProvider),
                child: Text('Service Provider'),
              ),
            ),
          ],
        );
      },
    );
  }
}
