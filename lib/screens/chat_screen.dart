import 'package:beauty_points/utills/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: Container(
            padding: EdgeInsets.all(9.r),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(
              Icons.chevron_left_rounded,
              color: AppColors.darkGreyColor,
              size: 18.sp,
            ),
          ),
        ),
        centerTitle: true,
        title: Text('Chat'),
      ),
    );
  }
}
