import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../route_generator.dart';
import '../utils/assets.dart';
import '../utils/color_constant.dart';
import '../widgets/custom_back_button.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 77.h),

            Text(
              'Select a Payment Method',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.h),
            Text(
              'Select a Payment Method that is feasible for you to purchase the subscription.',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.darkGreyColor,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 30.h),

            Expanded(
              child: Column(
                children: [
                  _buildPaymentOption(
                    icon: SvgPicture.asset(SvgAssets.paypal),
                    title: 'Paypal',
                    isSelected: false,
                  ),
                  _buildDivider(),
                  _buildPaymentOption(
                    icon: SvgPicture.asset(SvgAssets.creditCard),
                    title: 'Credit or Debit Card',
                    isSelected: true,
                  ),
                  _buildDivider(),
                  _buildPaymentOption(
                    icon: SvgPicture.asset(SvgAssets.bank),
                    title: 'Bank Account',
                    isSelected: false,
                  ),
                  _buildDivider(),
                  _buildPaymentOption(
                    icon: SvgPicture.asset(SvgAssets.stripe),
                    title: 'Stripe',
                    isSelected: false,
                  ),
                ],
              ),
            ),

            Row(
              children: [
                CustomBackButton(),

                SizedBox(width: 10.w),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, cardDetailsScreen);
                    },
                    child: Text('Next'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentOption({
    required Widget icon,
    required String title,
    required bool isSelected,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              icon,
              SizedBox(width: 10.w),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textPrimaryColor,
                ),
              ),
            ],
          ),
          Icon(
            isSelected
                ? Icons.radio_button_checked
                : Icons.radio_button_unchecked,
            color: AppColors.kPrimaryColor,
            size: 14.sp,
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(height: 1.h, color: AppColors.greyColor);
  }
}
