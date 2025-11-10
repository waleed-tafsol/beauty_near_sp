import 'package:beauty_near_sp/utils/extensions.dart';
import 'package:beauty_near_sp/view_models/add_service_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../utils/color_constant.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/dialog box/select_duration_dialog_box.dart';
import '../widgets/dialog box/success_dialog_box.dart';


class AddServiceScreen extends StatelessWidget {
  const AddServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final addServiceViewModel = context.watch<AddServiceViewModel>();

    return Scaffold(
      appBar: CustomAppBar(title: context.localization.addService),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            Text(
              context.localization.addServiceDetails,
              style: TextStyle(
                color: AppColors.textPrimaryColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 21.h),
                    Text(
                      context.localization.serviceName,
                      style: TextStyle(
                        color: AppColors.textPrimaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      controller: addServiceViewModel.serviceNameController,
                      decoration: InputDecoration(
                        hintText: context.localization.headMassage,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      context.localization.targetGender,
                      style: TextStyle(
                        color: AppColors.textPrimaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    MultiSelectTagField(
                      options: [
                        context.localization.male,
                        context.localization.female,
                      ],
                      selectedItems: addServiceViewModel.selectedGenders,
                      onSelectionChanged: (selected) {
                        addServiceViewModel.updateSelectedGenders(selected);
                        print('Selected: $selected');
                      },
                    ),
                    SizedBox(height: 20),
                    Text(
                      context.localization.selectEthnicity,
                      style: TextStyle(
                        color: AppColors.textPrimaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    MultiSelectTagField(
                      options: [
                        context.localization.white,
                        context.localization.blackAfricanCaribbean,
                        context.localization.asian,
                        context.localization.other,
                      ],
                      selectedItems: addServiceViewModel.selectedEthnicity,
                      onSelectionChanged: (selected) {
                        addServiceViewModel.updateSelectedEthnicity(selected);
                        print('Selected: $selected');
                      },
                    ),
                    SizedBox(height: 20),
                    Text(
                      context.localization.servicePrice,
                      style: TextStyle(
                        color: AppColors.textPrimaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    TextFormField(
                      controller: addServiceViewModel.servicePriceController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(hintText: "0"),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      context.localization.serviceDuration,
                      style: TextStyle(
                        color: AppColors.textPrimaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    GestureDetector(
                      onTap: () async {
                        final duration = await selectDurationDialogBox(
                          screenContext: context,
                        );
                        addServiceViewModel.updateDuration(duration);
                      },
                      child: AbsorbPointer(
                        child: TextFormField(
                          controller: addServiceViewModel.durationController,
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
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.only(bottom: 12.h, left: 20.w, right: 20.w),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              showSuccessDialog(
                screenContext: context,
                desc: context.localization.yourServiceSuccessfullyCreated,
                onSuccess: () {
                  addServiceViewModel.clearAll();
                  Navigator.pop(context);
                },
              );
            },
            child: Text(context.localization.create),
          ),
        ),
      ),
    );
  }
}
class MultiSelectTagField extends StatelessWidget {
  final Function(List<String>) onSelectionChanged;
  final List<String> selectedItems;
  final List<String> options;
  final Color? selectedColor;
  final Color? selectedTextColor;
  final Color? unselectedBorderColor;
  final Color? containerBorderColor;
  final double? containerBorderRadius;
  final double? tagBorderRadius;

  const MultiSelectTagField({
    super.key,
    required this.onSelectionChanged,
    required this.options,
    required this.selectedItems,
    this.selectedColor = const Color(0xffFEE2E2),
    this.selectedTextColor = const Color(0xffDC2626),
    this.unselectedBorderColor = const Color(0xffDC2626),
    this.containerBorderColor,
    this.containerBorderRadius = 38.0,
    this.tagBorderRadius = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: 12.w,
        runSpacing: 12.h,
        children: options.map((option) {
          final isSelected = selectedItems.contains(option);
          return GestureDetector(
            onTap: () {
              List<String> newSelection = List.from(selectedItems);
              if (isSelected) {
                newSelection.remove(option);
              } else {
                newSelection.add(option);
              }
              onSelectionChanged(newSelection);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
              decoration: BoxDecoration(
                color: isSelected ? selectedColor : Colors.white,
                borderRadius: BorderRadius.circular(tagBorderRadius!.r),
                border: Border.all(
                  color: isSelected
                      ? Colors.transparent
                      : unselectedBorderColor!,
                  width: isSelected ? 2 : 1,
                ),
              ),
              child: Text(
                option,
                style: TextStyle(
                  color: selectedTextColor,
                  fontSize: 14.sp,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}