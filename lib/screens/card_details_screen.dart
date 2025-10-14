import 'package:beauty_near_sp/screens/bot_nav_bar_page.dart';
import 'package:beauty_near_sp/utils/assets.dart';
import 'package:beauty_near_sp/utils/color_constant.dart';
import 'package:beauty_near_sp/view_models/personal_information_view_model.dart';
import 'package:beauty_near_sp/widgets/custom_back_button.dart';
import 'package:beauty_near_sp/widgets/dialog%20box/success_dialog_box.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

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
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     hintText: 'Select',
                  //     suffixIcon: Icon(
                  //       Iconsax.arrow_down_1,
                  //       size: 18.sp,
                  //       color: AppColors.greyColor,
                  //     ),
                  //   ),
                  // ),
                  Consumer<PersonalInformationViewModel>(
                    builder: (context, viewModel, child) {
                      return Container(
                        width: double.infinity,
                        height: 50.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.strokeColor),
                          borderRadius: BorderRadius.circular(38.r),
                          color: Colors.white,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            hint: Text(
                              'Select Country',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.greyColor,
                              ),
                            ),
                            items: viewModel.countries.map((String country) {
                              return DropdownMenuItem<String>(
                                value: country,
                                child: Text(
                                  country,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.textPrimaryColor,
                                  ),
                                ),
                              );
                            }).toList(),
                            value: viewModel.selectedCountry,
                            onChanged: (String? newValue) {
                              viewModel.setSelectedCountry(newValue);
                            },
                            buttonStyleData: ButtonStyleData(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              height: 50.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            iconStyleData: IconStyleData(
                              icon: Icon(
                                Iconsax.arrow_down_1,
                                size: 18.sp,
                                color: AppColors.greyColor,
                              ),
                            ),
                            dropdownStyleData: DropdownStyleData(
                              maxHeight: 200.h,
                              width: MediaQuery.of(context).size.width - 40.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.1),
                                    blurRadius: 10,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                              ),
                              offset: Offset(
                                0,
                                -(200.h + 60.h),
                              ), // ✅ maxHeight + button height + spacing
                              scrollbarTheme: ScrollbarThemeData(
                                radius: Radius.circular(40),
                                thickness: WidgetStateProperty.all(6),
                                thumbVisibility: WidgetStateProperty.all(true),
                              ),
                            ),
                            menuItemStyleData: MenuItemStyleData(
                              height: 40.h,
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                            ),
                          ),
                        ),
                      );
                    },
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
                  showSuccessDialog(context);
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
