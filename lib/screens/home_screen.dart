import 'package:beauty_near_sp/route_generator.dart';
import 'package:beauty_near_sp/utils/assets.dart';
import 'package:beauty_near_sp/utils/color_constant.dart';
import 'package:beauty_near_sp/utils/extensions.dart';
import 'package:beauty_near_sp/widgets/language_button.dart';
import 'package:beauty_near_sp/widgets/service_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../widgets/custom_search_bar.dart';

// Service Model

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  List<Service> get services => [
    Service(
      name: navigatorKey.currentContext!.localization.shaving,
      duration: navigatorKey.currentContext!.localization.minSession,
      price: '\$20',
      icon: SvgAssets.haircut,
      iconBackgroundColor: Color(0xFFF7E6EC),
    ),
    Service(
      name: navigatorKey.currentContext!.localization.shaving,
      duration: navigatorKey.currentContext!.localization.minSession,
      price: '\$20',
      icon: SvgAssets.shaving,
      iconBackgroundColor: Color(0xFFFCEBEC),
    ),
    Service(
      name: navigatorKey.currentContext!.localization.haircut,
      duration: navigatorKey.currentContext!.localization.minSession,
      price: '\$20',
      icon: SvgAssets.haircut,
      iconBackgroundColor: Color(0xFFF7E6EC),
    ),
    Service(
      name: navigatorKey.currentContext!.localization.shaving,
      duration: navigatorKey.currentContext!.localization.minSession,
      price: '\$20',
      icon: SvgAssets.shaving,
      iconBackgroundColor: Color(0xFFFCEBEC),
    ),
    Service(
      name: navigatorKey.currentContext!.localization.shaving,
      duration: navigatorKey.currentContext!.localization.minSession,
      price: '\$20',
      icon: SvgAssets.haircut,
      iconBackgroundColor: Color(0xFFF7E6EC),
    ),
    Service(
      name: navigatorKey.currentContext!.localization.shaving,
      duration: navigatorKey.currentContext!.localization.minSession,
      price: '\$20',
      icon: SvgAssets.shaving,
      iconBackgroundColor: Color(0xFFFCEBEC),
    ),
    Service(
      name: navigatorKey.currentContext!.localization.shaving,
      duration: navigatorKey.currentContext!.localization.minSession,
      price: '\$20',
      icon: SvgAssets.haircut,
      iconBackgroundColor: Color(0xFFF7E6EC),
    ),
    Service(
      name: navigatorKey.currentContext!.localization.shaving,
      duration: navigatorKey.currentContext!.localization.minSession,
      price: '\$20',
      icon: SvgAssets.shaving,
      iconBackgroundColor: Color(0xFFFCEBEC),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Card(
            shape: CircleBorder(),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, notification);
              },
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: Icon(
                  Iconsax.notification,
                  size: 18.sp,
                  color: AppColors.textPrimaryColor,
                ),
              ),
            ),
          ),
          LanguageButton(),
        ],
        forceMaterialTransparency: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 80.h,
        leadingWidth: 70.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Center(child: ClipOval(child: Image.asset(PngAssets.person))),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${context.localization.hello} Kelly',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: AppColors.textPrimaryColor,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Kelly Johnson!',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    color: AppColors.textPrimaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: _buildBody(context),
    );
  }

  Column _buildBody(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.h),
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
          child: CustomSearchBar(),
        ),
        SizedBox(height: 30.h),
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.localization.myServices,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: AppColors.textPrimaryColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, addServiceScreen);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 9.5.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.circular(48.r),
                  ),
                  child: Text(
                    context.localization.addService,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15.h),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: context.notchAwareBottomPadding),
            child: Wrap(
              spacing: 10.0, // Horizontal spacing
              runSpacing: 10.0, // Vertical spacing
              children: List.generate(8, (index) {
                return ServiceCard(service: services[index]);
              }),
            ),
          ),
        ),
      ],
    );
  }
}
