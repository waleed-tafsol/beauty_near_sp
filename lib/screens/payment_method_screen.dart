import 'package:beauty_near_sp/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../route_generator.dart';
import '../utils/assets.dart';
import '../utils/color_constant.dart';
import '../utils/enums.dart';
import '../view_models/auth_view_model.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_back_button.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return Consumer<AuthViewModel>(
        builder: (context, authViewModel, _) {
        return Scaffold(
          appBar: CustomAppBar(title: context.localization.payment),

          body: SafeArea(
            top: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: AppColors.kPrimaryColor, // Border color
                        width: 1.0.w, // Border width
                      ),
                      borderRadius: BorderRadius.circular(
                        12.0.r,
                      ), // Rounded corners
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50.h,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Row(
                              children: [
                                Icon(Iconsax.activity1),
                                SizedBox(width: 5.w),
                                Text(
                                  context.localization.interac,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {
                                    authViewModel.setIsInteracEditable();
                                  },
                                  icon: Icon(
                                    Iconsax.edit5,
                                    size: 25.sp,
                                    color: authViewModel.getIsInteracEditable
                                        ? AppColors.kPrimaryColor
                                        : AppColors.iconColor,
                                  ),
                                ),
                                Transform.scale(
                                  scale: 0.8,
                                  child: Switch(
                                    activeTrackColor: AppColors.kPrimaryColor,
                                    value: authViewModel.getSelectedPaymentType == PaymentType.interac.label,
                                    onChanged: (value) {
                                      authViewModel.setSelectedPaymentType(value: PaymentType.interac.label);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.kScaffoldColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.r),
                              bottomRight: Radius.circular(12.r),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 15.h,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    context.localization.enterFullName,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColors.textPrimaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                TextFormField(
                                  keyboardType: TextInputType.name,
                                  controller:
                                  authViewModel.getInteracNameController,
                                  decoration: InputDecoration(
                                    hintText: context.localization.yourName,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    authViewModel.getIntracWithEmail
                                        ? context.localization.enterEmail
                                        : context.localization.enterPhone,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColors.textPrimaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                TextFormField(
                                  keyboardType:
                                  authViewModel.getIntracWithEmail
                                      ? TextInputType.emailAddress
                                      : TextInputType.phone,
                                  controller: authViewModel
                                      .getInteracEmailPhoneController,
                                  decoration: InputDecoration(
                                    hintText: authViewModel.getIntracWithEmail
                                         ? context.localization.enterEmail
                                        : context.localization.enterPhone,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  context.localization.or,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.textPrimaryColor,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                TextButton(
                                  onPressed: () {
                                    authViewModel.setIntracWithEmail();
                                  },
                                  child: Text(
                                    authViewModel.getIntracWithEmail
                                        ? context.localization.usePhoneNumber
                                        :   context.localization.useEmailAddress,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColors.kPrimaryColor,
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible: authViewModel.getIsInteracEditable,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20.h),

                                      SizedBox(
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text(context.localization.submit),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: AppColors.kPrimaryColor, // Border color
                        width: 1.0.w, // Border width
                      ),
                      borderRadius: BorderRadius.circular(
                        12.0.r,
                      ), // Rounded corners
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50.h,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Row(
                              children: [
                                Icon(Iconsax.activity1),
                                SizedBox(width: 5.w),
                                Text(
                                  context.localization.voidCheque,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {
                                    authViewModel.setIsVoidChequeEditable();
                                  },
                                  icon: Icon(
                                    Iconsax.edit5,
                                    size: 25.sp,
                                    color: authViewModel.getIsVoidChequeEditable
                                        ? AppColors.kPrimaryColor
                                        : AppColors.iconColor,
                                  ),
                                ),
                                Transform.scale(
                                  scale: 0.8,
                                  child: Switch(
                                    activeTrackColor: AppColors.kPrimaryColor,
                                    value: authViewModel.getSelectedPaymentType == PaymentType.voidCheque.label,
                                    onChanged: (value) {
                                      authViewModel.setSelectedPaymentType(value: PaymentType.voidCheque.label);

                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.kScaffoldColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.r),
                              bottomRight: Radius.circular(12.r),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 15.h,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    context.localization.enterBankDetails,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColors.textPrimaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                TextFormField(
                                  keyboardType: TextInputType.text,
                                  controller: authViewModel
                                      .getInteracEmailPhoneController,
                                  decoration: InputDecoration(
                                    hintText:  context.localization.yourBankDetails,
                                  ),
                                ),
                                Visibility(
                                  visible: authViewModel.getIsVoidChequeEditable,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20.h),
                                      SizedBox(
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text(context.localization.submit),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }

}
