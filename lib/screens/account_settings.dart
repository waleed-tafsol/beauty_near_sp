import 'package:beauty_near_sp/utils/assets.dart';
import 'package:beauty_near_sp/utils/color_constant.dart';
import 'package:beauty_near_sp/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../route_generator.dart';
import '../widgets/account_tile.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      extendBodyBehindAppBar: true,
      body: SizedBox.fromSize(
        size: MediaQuery.sizeOf(context),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              // bottom: MediaQuery.sizeOf(context).height - 300.h,
              child: Container(
                height: 178.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: AppColors.kPrimaryGradient,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.r),
                    bottomRight: Radius.circular(50.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    context.localization.accountSettings,
                    style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kScaffoldColor,
                    ),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              top: 178.h - 54.h - 5.r,
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 108.h,
                      width: 108.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 5.r),
                        image: DecorationImage(
                          image: AssetImage(PngAssets.person),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 19.h),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: 20.w,
                        right: 20.w,
                        bottom: context.notchAwareBottomPadding,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'John Doe',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimaryColor,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            'john.doe@example.com',
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: AppColors.textPrimaryColor,
                            ),
                          ),
                          SizedBox(height: 40.h),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              context.localization.general,
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textPrimaryColor,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          AccountTile(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                personalInformationScreen,
                              );
                            },
                            title: context.localization.personalInfo,
                            iconPath: SvgAssets.pi,
                          ),
                          SizedBox(height: 10.h),
                          AccountTile(
                            onTap: () {
                              Navigator.pushNamed(context, paymentMethodScreen);
                            },
                            title: context.localization.payment,
                            iconPath: SvgAssets.payment,
                          ),
                          SizedBox(height: 10.h),
                          AccountTile(
                            onTap: () {
                              Navigator.pushNamed(context, support);
                            },
                            title: context.localization.support,
                            iconPath: SvgAssets.support,
                          ),
                          SizedBox(height: 10.h),
                          AccountTile(
                            onTap: () {
                              Navigator.pushNamed(context, languagesScreen);
                            },
                            title: context.localization.language,
                            iconPath: SvgAssets.lang,
                          ),
                          SizedBox(height: 30.h),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              context.localization.helpAndSupport,
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textPrimaryColor,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          AccountTile(
                            onTap: () {
                              Navigator.pushNamed(context, aboutUs);
                            },
                            title: context.localization.aboutUs,
                            iconPath: SvgAssets.about,
                          ),
                          SizedBox(height: 10.h),
                          AccountTile(
                            onTap: () {
                              Navigator.pushNamed(context, privacyPolicy);
                            },
                            title: context.localization.privacyPolicy,
                            iconPath: SvgAssets.pp,
                          ),
                          SizedBox(height: 10.h),
                          AccountTile(
                            onTap: () {
                              Navigator.pushNamed(context, termsAndConditions);
                            },
                            title: context.localization.termsAndCondition,
                            iconPath: SvgAssets.tc,
                          ),
                          SizedBox(height: 30.h),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              context.localization.logout,
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textPrimaryColor,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          AccountTile(
                            onTap: () {
                              Navigator.pushNamedAndRemoveUntil(
                                context,
                                loginScreen,
                                (route) => false,
                              );
                            },
                            title: context.localization.logout,
                            iconPath: SvgAssets.logout,
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
