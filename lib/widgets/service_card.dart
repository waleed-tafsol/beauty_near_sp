import 'package:beauty_near_sp/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Service {
  final String name;
  final String duration;
  final String price;
  final String icon;
  final Color iconBackgroundColor;

  Service({
    required this.name,
    required this.duration,
    required this.price,
    required this.icon,
    required this.iconBackgroundColor,
  });
}

// Service Card Widget
class ServiceCard extends StatelessWidget {
  final Service service;

  const ServiceCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       width: 168.w,
      height: 144.h,
    // color: Colors.amberAccent,
     // padding: EdgeInsets.all(10.r),
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.circular(8.r),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.black.withOpacity(0.08),
      //       blurRadius: 16,
      //       offset: Offset(0, -4),
      //     ),
      //   ],
      // ),
      child: Card(
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        color: Colors.white,
        child: Padding(
          padding:  EdgeInsets.all(10.0.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10.h,
            children: [
              // Icon Section
              SvgPicture.asset(service.icon, width: 45.h),
            //  SizedBox(height: 10.h),
              // Text Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    service.name,
                    style: TextStyle(
                      height: 0,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: AppColors.textPrimaryColor,
                    ),
                  ),
                           // SizedBox(height: 3.h),
                  Text(
                    service.duration,
                    style: TextStyle(
                      height: 0,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: AppColors.darkGreyColor,
                    ),
                  ),
                ],
              ),
              //SizedBox(height: 10.h),
              // Price
              Text(
                service.price,
                style: TextStyle(
                  height: 0,
                  fontWeight: FontWeight.w500,
                  fontSize: 17.sp,
                  color: AppColors.kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
