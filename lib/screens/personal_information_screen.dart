import 'dart:io';
import 'package:beauty_near_sp/utils/assets.dart';
import 'package:beauty_near_sp/utils/color_constant.dart';
import 'package:beauty_near_sp/widgets/custom_app_bar.dart';
import 'package:beauty_near_sp/widgets/bottom_sheets/image_selection_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../view_models/auth_view_model.dart';

class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({super.key});

  @override
  State<PersonalInformationScreen> createState() => _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {



  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(
        builder: (context, authViewModel, _) {
        return Scaffold(
          appBar: CustomAppBar(title: 'Personal Information'),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h),
                      Center(
                        child: GestureDetector(
                          onTap: () async {
                           await authViewModel.setProfileImagePath(context: context);
                          },
                          child: Stack(
                            children: [
                              Container(
                                width: 94.w,
                                height: 94.h,
                                decoration: BoxDecoration(shape: BoxShape.circle),
                                child: CircleAvatar(
                                  radius: 38.r,
                                  backgroundColor: Colors.pink,
                                  backgroundImage: authViewModel.getProfileImagePath != null
                                      ? FileImage(File(authViewModel.getProfileImagePath!))
                                      : AssetImage(PngAssets.person) as ImageProvider,
                                ),
                              ),
                              Positioned(
                                bottom: 1,
                                right: 1,
                                child: CircleAvatar(
                                  radius: 12.r,
                                  backgroundColor: Color(0xffEFC2C8),
                                  child: Icon(
                                    Iconsax.edit,
                                    color: AppColors.kPrimaryColor,
                                    size: 12.w,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    SizedBox(height: 30.h),
                    Text(
                      'Full Name',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      controller: authViewModel.getNameController,
                      decoration: InputDecoration(hintText: 'Your Name'),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Email Address',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: authViewModel.getEmailController,
                      decoration: InputDecoration(hintText: 'Your Email'),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Phone Number',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: authViewModel.getPhoneController,
                      decoration: InputDecoration(hintText: 'Phone Number'),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70.r),
                        border: Border.all(
                          color: AppColors.kPrimaryColor, // Set the border color here
                          width: 1.sp, // Optional: Set the border width
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Change Password",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.kPrimaryColor,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward,
                            color: AppColors.kPrimaryColor,
                            size: 20.sp,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Edit Profile"),
                      ),
                    ),
                    SizedBox(height: 40.h),
                    Text(
                      "Interac Details",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Full Name',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.textPrimaryColor,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        TextFormField(
                            controller: authViewModel.getInteracNameController,
                            decoration: InputDecoration(hintText: 'Your Name')),
                        SizedBox(height: 20.h),
                        Text(
                          'Email Address',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.textPrimaryColor,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: authViewModel.getInteracEmailController,
                          decoration: InputDecoration(hintText: 'Your Email'),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Phone Number',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.textPrimaryColor,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          controller: authViewModel.getInteracPhoneController,
                          decoration: InputDecoration(hintText: 'Phone Number'),
                        ),
                        /*     Text(
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
                            keyboardType: TextInputType.number,
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
                                    Consumer<PersonalInformationViewModel>(
                                      builder: (context, viewModel, child) {
                                        return GestureDetector(
                                          onTap: () => viewModel.selectDate(context),
                                          child: AbsorbPointer(
                                            child: TextFormField(
                                              controller: viewModel.dateController,
                                              decoration: InputDecoration(
                                                hintText: 'MM/DD/YYYY',
                                                suffixIcon: Icon(
                                                  Iconsax.calendar_1,
                                                  size: 18.sp,
                                                  color: AppColors.greyColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
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
                                      keyboardType: TextInputType.number,
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
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Zip Code',
                              // suffixIcon: Icon(
                              //   Iconsax.arrow_down_1,
                              //   size: 18.sp,
                              //   color: AppColors.greyColor,
                              // ),
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
                                      offset: Offset(0, -(200.h + 60.h)),
                                      // ✅ maxHeight + button height + spacing
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
                          ),*/
                      ],
                    ),
                    SizedBox(height: 20.h),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Edit Bank Details"),
                      ),
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
