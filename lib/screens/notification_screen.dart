import 'package:beauty_near_sp/utils/color_constant.dart';
import 'package:beauty_near_sp/utils/extensions.dart';
import 'package:beauty_near_sp/widgets/custom_app_bar.dart';
import 'package:beauty_near_sp/widgets/notification_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kScaffoldColor,
      // appBar: AppBar(
      //   forceMaterialTransparency: true,
      //   centerTitle: true,
      //   title: Text(
      //     context.localization.notifications,
      //     style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w500),
      //   ),
      // ),
      appBar: CustomAppBar(title: context.localization.notifications),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 28.h),
            Row(
              children: [
                Text(
                  context.localization.today,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600],
                  ),
                ),
                Spacer(),
                Container(
                  height: 32.h,
                  width: 102.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70.r),
                    gradient: AppColors.kPrimaryGradient,
                  ),
                  child: Center(
                    child: Text(
                      context.localization.markAllAsRead,
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return NotificationTile(
                    title: "William Manager",
                    subtitle:
                        "It is a long established fact that a reader will be distracted",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
