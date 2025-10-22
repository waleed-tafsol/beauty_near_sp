import 'package:beauty_near_sp/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../utils/color_constant.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(12.0.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 50.h,
                  height: 50.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.highlightColor,
                  ),
                  child: Icon(Iconsax.user, color: AppColors.kPrimaryColor),
                ),
                // Positioned(
                //   top: 3.5.h,
                //   left: 7.w,
                //   child: SvgPicture.asset(
                //     SvgAssets.arrow,
                //     height: 2.4.h,
                //   ),
                // ),
              ],
            ),
            SizedBox(width: 12.w),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 5.h,
                children: [
                  Text(
                    'Chiamaka Winifred',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'PayPal - 12121212454512',
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '08:23 AM . ${context.localization.paymentReceived}',
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            Text(
              '\$50',
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
