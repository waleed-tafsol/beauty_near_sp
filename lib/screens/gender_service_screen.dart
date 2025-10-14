import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../route_generator.dart';
import '../utils/assets.dart';
import '../utils/color_constant.dart';
import '../widgets/custom_back_button.dart';

class GenderServiceScreen extends StatefulWidget {
  const GenderServiceScreen({super.key});

  @override
  State<GenderServiceScreen> createState() => _GenderServiceScreenState();
}

class _GenderServiceScreenState extends State<GenderServiceScreen> {
  List<int> selectedServices = [];

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
                    id: 1,
                  ),
                  SizedBox(height: 15.h),
                  _buildGenderCard(
                    title: "Women's Services",
                    icon: SvgAssets.women,
                    isSelected: false,
                    id: 2,
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
    required int id,
    required String title,
    required String icon,
    required bool isSelected,
    //required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: () {
        if (selectedServices.contains(id)) {
          setState(() {
            selectedServices.remove(id);
          });
        } else {
          setState(() {
            selectedServices.add(id);
          });
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: selectedServices.contains(id)
              ? const Color(0xffFBE9EA)
              : Colors.white,
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
