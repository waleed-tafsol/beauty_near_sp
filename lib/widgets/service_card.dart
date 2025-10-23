import 'package:auto_size_text/auto_size_text.dart';
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
      child: Card(
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(10.0.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10.h,
            children: [
              SvgPicture.asset(service.icon, width: 45.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    service.name,
                    maxLines: 1,
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
