import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/color_constant.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/dialog box/select_duration_dialog_box.dart';

class AddServiceScreen extends StatefulWidget {
  const AddServiceScreen({super.key});

  @override
  State<AddServiceScreen> createState() => _AddServiceScreenState();
}

class _AddServiceScreenState extends State<AddServiceScreen> {
  List<String> selectedGenders = [];
  final TextEditingController _durationController = TextEditingController();

  @override
  void dispose() {
    _durationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Add Service"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Add Service Details",
                      style: TextStyle(
                        color: AppColors.textPrimaryColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 21.h),
                  Text(
                    "Service Name",
                    style: TextStyle(
                      color: AppColors.textPrimaryColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Head Massage"),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Target Gender",
                    style: TextStyle(
                      color: AppColors.textPrimaryColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: double.infinity,
                    height: 50.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.strokeColor),
                      borderRadius: BorderRadius.circular(38.r),
                      // borderSide: BorderSide(color: AppColors.strokeColor),
                      color: Colors.white,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        isExpanded: true,

                        hint: selectedGenders.isEmpty
                            ? Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.w),
                                child: Text(
                                  "Select Gender",
                                  style: TextStyle(
                                    color: Color(0xff9CA3AF),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            : Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Wrap(
                                        spacing: 8.w,
                                        children: selectedGenders.map((gender) {
                                          return Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 12.w,
                                              vertical: 6.h,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Color(
                                                0xffFEE2E2,
                                              ), // Light pink background
                                              borderRadius:
                                                  BorderRadius.circular(16.r),
                                            ),
                                            child: Text(
                                              gender,
                                              style: TextStyle(
                                                color: Color(
                                                  0xffDC2626,
                                                ), // Reddish-pink text
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                        items: ['Male', 'Female'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 8.h,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 20.w,
                                    height: 20.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: selectedGenders.contains(value)
                                            ? Color(0xffDC2626)
                                            : Color(0xffD1D5DB),
                                        width: 2,
                                      ),
                                      color: selectedGenders.contains(value)
                                          ? Color(0xffDC2626)
                                          : Colors.transparent,
                                    ),
                                    child: selectedGenders.contains(value)
                                        ? Icon(
                                            Icons.check,
                                            color: Colors.white,
                                            size: 12.sp,
                                          )
                                        : null,
                                  ),
                                  SizedBox(width: 12.w),
                                  Text(
                                    value,
                                    style: TextStyle(
                                      color: AppColors.textPrimaryColor,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            setState(() {
                              if (selectedGenders.contains(newValue)) {
                                selectedGenders.remove(newValue);
                              } else {
                                selectedGenders.add(newValue);
                              }
                            });
                          }
                        },
                        iconStyleData: IconStyleData(
                          icon: Padding(
                            padding: EdgeInsets.only(right: 16.w),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xff6B7280),
                              size: 20.sp,
                            ),
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
                          offset: const Offset(0, -5),
                          scrollbarTheme: ScrollbarThemeData(
                            radius: Radius.circular(40),
                            thickness: WidgetStateProperty.all(6),
                            thumbVisibility: WidgetStateProperty.all(true),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Service Price",

                    style: TextStyle(
                      color: AppColors.textPrimaryColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "0"),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Service Duration",
                    style: TextStyle(
                      color: AppColors.textPrimaryColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  GestureDetector(
                    onTap: () async {
                      _durationController.text = await selectDurationDialogBox(
                        screenContext: context,
                      );
                    },
                    child: AbsorbPointer(
                      child: TextFormField(
                        controller: _durationController,
                        decoration: InputDecoration(
                          hintText: "HH/MM",
                          suffixIcon: Icon(
                            Icons.access_time,
                            size: 18.sp,
                            color: AppColors.darkGreyColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 12.h, left: 20.w, right: 20.w),
        width: double.infinity,
        child: ElevatedButton(onPressed: () {}, child: Text("Create")),
      ),
    );
  }
}
