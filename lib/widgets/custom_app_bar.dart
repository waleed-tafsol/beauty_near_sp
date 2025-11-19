import 'package:beauty_near_sp/utils/color_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      backgroundColor: AppColors.kScaffoldColor,
      centerTitle: true,
      toolbarHeight: kToolbarHeight.h,
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.textPrimaryColor,
          fontSize: 19.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      leading: Center(
        child: SizedBox(
          width: 72.w,
          child: Card(
            shape: CircleBorder(),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: Icon(
                  CupertinoIcons.back,
                  color: Color(0xff292D32),
                  size: 18.sp,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>  Size.fromHeight(kToolbarHeight.h);
}
