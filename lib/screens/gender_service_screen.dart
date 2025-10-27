import 'package:beauty_near_sp/utils/extensions.dart';
import 'package:beauty_near_sp/view_models/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../route_generator.dart';
import '../utils/assets.dart';
import '../utils/color_constant.dart';

class GenderServiceScreen extends StatelessWidget {
  const GenderServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 77.h),

              Expanded(
                child: Column(
                  children: [
                    Text(
                      context.localization.targetGenderForServices,
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
                      '',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: AppColors.darkGreyColor,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 30.h),
                    Consumer<AuthViewModel>(
                      builder: (context, viewModel, child) {
                        return Column(
                          children: [
                            _buildGenderCard(
                              title: context.localization.mensService,
                              icon: SvgAssets.men,
                              isSelected: viewModel.isServiceSelected(1),
                              id: 1,
                            ),
                            SizedBox(height: 15.h),
                            _buildGenderCard(
                              title: context.localization.womensService,
                              icon: SvgAssets.women,
                              isSelected: viewModel.isServiceSelected(2),
                              id: 2,
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, locationScreen);
                  },
                  child: Text(context.localization.next),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGenderCard({
    required int id,
    required String title,
    required String icon,
    required bool isSelected,
    //required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: () {
        navigatorKey.currentContext!.read<AuthViewModel>().toggleService(id);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffFBE9EA) : Colors.white,
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
