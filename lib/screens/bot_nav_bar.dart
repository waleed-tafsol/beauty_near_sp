import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:beauty_points/utills/color_constant.dart';

class BotNavBar extends StatelessWidget {
  const BotNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Home Button (Active)
          _buildNavItem(
            icon: Icons.home,
            label: 'Home',
            isActive: true,
          ),
          
          // Other nav items (inactive)
          _buildNavItem(
            icon: Icons.calendar_today,
            label: '',
            isActive: false,
          ),
          
          _buildNavItem(
            icon: Icons.wallet,
            label: '',
            isActive: false,
          ),
          
          _buildNavItem(
            icon: Icons.settings,
            label: '',
            isActive: false,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required bool isActive,
  }) {
    return Container(
      width: 48.w,
      height: 48.w,
      decoration: BoxDecoration(
        color: isActive ? AppColors.kPrimaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(48.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 24.w,
            color: isActive ? Colors.white : AppColors.greyColor,
          ),
          if (label.isNotEmpty) ...[
            SizedBox(height: 8.h),
            Text(
              label,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: isActive ? AppColors.kPrimaryColor : AppColors.greyColor,
              ),
            ),
          ],
        ],
      ),
    );
  }
}