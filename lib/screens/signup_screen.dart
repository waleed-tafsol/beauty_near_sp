import 'package:beauty_near_sp/route_generator.dart';
import 'package:beauty_near_sp/utils/assets.dart';
import 'package:beauty_near_sp/utils/color_constant.dart';
import 'package:beauty_near_sp/utils/extensions.dart';
import 'package:beauty_near_sp/widgets/language_app_bar.dart';
import 'package:beauty_near_sp/widgets/social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../view_models/auth_view_model.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(
      builder: (context, authViewModel, _) {
        return Scaffold(
          appBar: LanguageAppBar(),
          extendBodyBehindAppBar: true,
          body: SafeArea(
            top: false,
            child: SingleChildScrollView(
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
                        context.localization.createAnAccount,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textPrimaryColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 32.h),
                    Text(
                      context.localization.fullName,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      controller: authViewModel.getNameController,
                      decoration: InputDecoration(hintText: context.localization.yourName),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      context.localization.emailAddress,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: authViewModel.getEmailController,
                      decoration: InputDecoration(hintText: context.localization.yourEmail),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      context.localization.phoneNumber,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: authViewModel.getPhoneController,
                      decoration: InputDecoration(hintText: context.localization.phoneNumber),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      context.localization.password,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: context.localization.password,
                        suffixIcon: Icon(Iconsax.eye),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      context.localization.confirmPassword,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: context.localization.confirmPassword,
                        suffixIcon: Icon(Iconsax.eye),
                      ),
                    ),

                    SizedBox(height: 24.h),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, otpScreen);
                        },
                        child: Text(context.localization.next),
                      ),
                    ),
                    SizedBox(height: 24.h),
                    SvgPicture.asset(
                      SvgAssets.or,
                      // width: double.infinity,
                      // height: 24.h,
                    ),
                    SizedBox(height: 24.h),
                    SocialButton(
                      text: context.localization.continueWithGoogle,
                      iconPath: SvgAssets.google,
                      onPressed: () {},
                    ),
                    SizedBox(height: 16.h),
                    SocialButton(
                      text: context.localization.continueWithFacebook,
                      iconPath: SvgAssets.facebook,
                      onPressed: () {},
                    ),
                    SizedBox(height: 24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          context.localization.alreadyHaveAccount,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.darkGreyColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, loginScreen);
                          },
                          child: Text(
                            context.localization.signIn,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.kPrimaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
