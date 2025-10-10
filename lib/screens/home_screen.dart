import 'package:beauty_points/utills/assets.dart';
import 'package:beauty_points/utills/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header Section
          _buildHeader(),
          // SizedBox(height: 20.h),

          // Search Bar
          _buildSearchBar(),
          SizedBox(height: 20.h),

          // My Services Section
          Expanded(child: _buildMyServicesSection()),
        ],
      ),
      // bottomNavigationBar: const BotNavBar(),
    );
  }

  Widget _buildHeader() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Greeting Text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Kelly',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textPrimaryColor,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Good Morning!',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimaryColor,
                  ),
                ),
              ],
            ),

            // Profile Image
            Container(
              width: 36.w,
              height: 36.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 30,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: Image.asset(PngAssets.beautyNear, fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        height: 48.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38.r),
          border: Border.all(color: AppColors.strokeColor),
        ),
        child: Row(
          children: [
            SizedBox(width: 16.w),
            Icon(Icons.search, size: 20.w, color: AppColors.greyColor),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                'Search',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.greyColor,
                ),
              ),
            ),
            SizedBox(width: 16.w),
          ],
        ),
      ),
    );
  }

  Widget _buildMyServicesSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Services',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textPrimaryColor,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: AppColors.kPrimaryColor,
                  borderRadius: BorderRadius.circular(48.r),
                ),
                child: Text(
                  'Add Service',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),

          // Services Grid
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // First Row
                  Row(
                    children: [
                      Expanded(
                        child: _buildServiceCard(
                          'Haircut',
                          '\$20',
                          '60 min session',
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Expanded(
                        child: _buildServiceCard(
                          'Shaving',
                          '\$20',
                          '60 min session',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),

                  // Second Row
                  Row(
                    children: [
                      Expanded(
                        child: _buildServiceCard(
                          'Haircut',
                          '\$20',
                          '60 min session',
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Expanded(
                        child: _buildServiceCard(
                          'Shaving',
                          '\$20',
                          '60 min session',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),

                  // Third Row
                  Row(
                    children: [
                      Expanded(
                        child: _buildServiceCard(
                          'Haircut',
                          '\$20',
                          '60 min session',
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Expanded(
                        child: _buildServiceCard(
                          'Shaving',
                          '\$20',
                          '60 min session',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),

                  // Fourth Row
                  Row(
                    children: [
                      Expanded(
                        child: _buildServiceCard(
                          'Haircut',
                          '\$20',
                          '60 min session',
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Expanded(
                        child: _buildServiceCard(
                          'Shaving',
                          '\$20',
                          '60 min session',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 80.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard(String title, String price, String duration) {
    return Container(
      width: 168.w,
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 16,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // Service Icon
          Container(
            width: 45.w,
            height: 45.w,
            decoration: BoxDecoration(
              color: const Color(0xFFF7E6EC),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              Icons.content_cut,
              size: 24.w,
              color: AppColors.kPrimaryColor,
            ),
          ),
          SizedBox(height: 10.h),

          // Service Details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textPrimaryColor,
                ),
              ),
              SizedBox(height: 3.h),
              Text(
                duration,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.darkGreyColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),

          // Price
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              price,
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
