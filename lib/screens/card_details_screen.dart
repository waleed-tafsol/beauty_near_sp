import 'package:beauty_points/route_generator.dart';
import 'package:beauty_points/utills/assets.dart';
import 'package:beauty_points/utills/color_constant.dart';
import 'package:beauty_points/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';

class CardDetailsScreen extends StatelessWidget {
  const CardDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kScaffoldColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 77.h),

              Center(
                child: Text(
                  'Add Card Details',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10.h),
              Center(
                child: Text(
                  'Please fill the form to proceed with the payment',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkGreyColor,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 15.h),
              Center(
                child: SvgPicture.asset(
                  SvgAssets.vv,
                  width: 153.w,
                  height: 13.h,
                ),
              ),

              SizedBox(height: 30.h),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Holder Name',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.textPrimaryColor,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'John Doe',
                      suffixIcon: Icon(
                        Iconsax.user,
                        size: 18.sp,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Card Number',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.textPrimaryColor,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: '1234 5678 9012 3456',
                      suffixIcon: Icon(
                        Iconsax.card,
                        size: 18.sp,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Expiry Date',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.textPrimaryColor,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'MM/DD/YYYY',
                                suffixIcon: Icon(
                                  Iconsax.calendar_1,
                                  size: 18.sp,
                                  color: AppColors.greyColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CVV',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.textPrimaryColor,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            TextFormField(
                              decoration: InputDecoration(hintText: 'CVC'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Zip Code',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.textPrimaryColor,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Zip Code',
                      suffixIcon: Icon(
                        Iconsax.arrow_down_1,
                        size: 18.sp,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Country / Region',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.textPrimaryColor,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Select',
                      suffixIcon: Icon(
                        Iconsax.arrow_down_1,
                        size: 18.sp,
                        color: AppColors.greyColor,
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
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 24.h, left: 20.w, right: 20.w),
        child: Row(
          children: [
            CustomBackButton(),

            SizedBox(width: 10.w),

            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, botNavBar);
                },
                child: Text('Pay Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
