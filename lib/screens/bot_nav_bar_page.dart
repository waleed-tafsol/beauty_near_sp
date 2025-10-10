import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../utills/color_constant.dart';
import '../view_models/bot_nav_view_model.dart';
import '../widgets/bottom_nav_bar.dart';

class BotNavPage extends StatelessWidget {
  static const String routeName = '/bot_nav_page';

  const BotNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    final BotNavViewModel viewModel = context.watch<BotNavViewModel>();
    return Scaffold(
      body: viewModel.currentChild,
      floatingActionButton: Transform.rotate(
        angle: pi / 4,
        child: Container(
          width: 60.h,
          height: 60.h,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimaryColor),
            gradient: AppColors.primaryGradient,
            borderRadius: BorderRadius.circular(14.r),
          ),
          child: Icon(Icons.close, color: Colors.white, size: 24.sp),
        ),
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(
        currentIndex: viewModel.currentPage,
        onTap: (index) {
          viewModel.currentPage = index;
        },
      ),
    );
  }
}
