import 'package:beauty_points/utills/color_constant.dart';
import 'package:beauty_points/utills/assets.dart';
import 'package:beauty_points/widgets/service_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

// Service Model

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Service> services = [
    Service(
      name: 'Haircut',
      duration: '60 min session',
      price: '\$20',
      icon: SvgAssets.haircut,
      iconBackgroundColor: Color(0xFFF7E6EC),
    ),
    Service(
      name: 'Shaving',
      duration: '60 min session',
      price: '\$20',
      icon: SvgAssets.shaving,
      iconBackgroundColor: Color(0xFFFCEBEC),
    ),
    Service(
      name: 'Haircut',
      duration: '60 min session',
      price: '\$20',
      icon: SvgAssets.haircut,
      iconBackgroundColor: Color(0xFFF7E6EC),
    ),
    Service(
      name: 'Shaving',
      duration: '60 min session',
      price: '\$20',
      icon: SvgAssets.shaving,
      iconBackgroundColor: Color(0xFFFCEBEC),
    ),
    Service(
      name: 'Haircut',
      duration: '60 min session',
      price: '\$20',
      icon: SvgAssets.haircut,
      iconBackgroundColor: Color(0xFFF7E6EC),
    ),
    Service(
      name: 'Shaving',
      duration: '60 min session',
      price: '\$20',
      icon: SvgAssets.shaving,
      iconBackgroundColor: Color(0xFFFCEBEC),
    ),
    Service(
      name: 'Haircut',
      duration: '60 min session',
      price: '\$20',
      icon: SvgAssets.haircut,
      iconBackgroundColor: Color(0xFFF7E6EC),
    ),
    Service(
      name: 'Shaving',
      duration: '60 min session',
      price: '\$20',
      icon: SvgAssets.shaving,
      iconBackgroundColor: Color(0xFFFCEBEC),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 80.h,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hello Kelly',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: AppColors.textPrimaryColor,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Good Morning!',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    color: AppColors.textPrimaryColor,
                  ),
                ),
              ],
            ),
            Container(
              width: 36.w,
              height: 36.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 30,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Center(
                child: Icon(
                  Iconsax.notification,
                  size: 18.sp,
                  color: AppColors.textPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(
                  Iconsax.search_normal,
                  size: 20.sp,
                  color: AppColors.greyColor,
                ),
                suffixIcon: Icon(
                  Iconsax.sort,
                  size: 20.sp,
                  color: AppColors.greyColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Services',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: AppColors.textPrimaryColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 9.5.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.circular(48.r),
                  ),
                  child: Text(
                    'Add Service',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          // Services Grid
          Expanded(
            child: GridView.builder(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 20.w,
                vertical: 20.h,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 15.h,

                // childAspectRatio: 0.85,
              ),
              itemCount: services.length,
              itemBuilder: (context, index) {
                return ServiceCard(service: services[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
