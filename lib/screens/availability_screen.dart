import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../route_generator.dart';
import '../utils/color_constant.dart';
import '../widgets/custom_back_button.dart';

class AvailabilityScreen extends StatelessWidget {
  const AvailabilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 77.h),

              Center(
                child: Text(
                  'Select Your Availability',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimaryColor,
                    height: 1.22,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10.h),
              Center(
                child: Text(
                  'Enter the OTP code we just sent you on your registered Email/ Phone Number',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkGreyColor,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 30.h),

              _buildDaySelectionSection(),

              SizedBox(height: 20.h),

              Text(
                'Start Time',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textPrimaryColor,
                  height: 1.22,
                ),
              ),
              SizedBox(height: 8.h),
              TextField(
                decoration: InputDecoration(
                  hintText: 'HH/MM',
                  suffixIcon: Icon(
                    Icons.access_time,
                    size: 18.sp,
                    color: AppColors.darkGreyColor,
                  ),
                ),
              ),
              SizedBox(height: 20.h),

              Text(
                'End Time',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textPrimaryColor,
                  height: 1.22,
                ),
              ),
              SizedBox(height: 8.h),
              TextField(
                decoration: InputDecoration(
                  hintText: 'HH/MM',
                  suffixIcon: Icon(
                    Icons.access_time,
                    size: 18.sp,
                    color: AppColors.darkGreyColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 24.h, left: 20.w, right: 20.w),
        child: Row(
          children: [
            CustomBackButton(),

            SizedBox(width: 10.w),

            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, paymentMethodScreen);
                },
                child: Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDaySelectionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Days',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.textPrimaryColor,
            height: 1.22,
          ),
        ),
        SizedBox(height: 9.h),
        Wrap(
          spacing: 12.w,
          runSpacing: 12.h,
          children: [
            _buildDayTab('Mon', false),
            _buildDayTab('Tue', true),
            _buildDayTab('Wed', false),
            _buildDayTab('Thurs', false),
            _buildDayTab('Fri', true),
            _buildDayTab('Sat', false),
            _buildDayTab('Sun', false),
          ],
        ),
      ],
    );
  }

  Widget _buildDayTab(String day, bool isSelected) {
    return Container(
      width: 78.w,
      height: 70.h,
      decoration: BoxDecoration(
        gradient: isSelected
            ? LinearGradient(
                colors: [AppColors.kPrimaryColor, Color(0xffDE6C75)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )
            : null,
        color: isSelected ? null : Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.strokeColor, width: 1),
      ),
      child: Center(
        child: Text(
          day,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: isSelected ? Colors.white : AppColors.darkGreyColor,
            height: 1.22,
          ),
        ),
      ),
    );
  }
}
