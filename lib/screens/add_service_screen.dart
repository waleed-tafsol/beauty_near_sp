import 'package:beauty_near_sp/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/color_constant.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/dialog box/select_duration_dialog_box.dart';
import '../widgets/dialog box/success_dialog_box.dart';

class AddServiceScreen extends StatefulWidget {
  const AddServiceScreen({super.key});

  @override
  State<AddServiceScreen> createState() => _AddServiceScreenState();
}

class _AddServiceScreenState extends State<AddServiceScreen> {
  List<String> _selectedEthnicity = [];
  // String? _selectedGender; // Add this variable
  List<String> _selectedGenders = []; // Changed to List for multiple selection

  final TextEditingController _durationController = TextEditingController();

  @override
  void dispose() {
    _durationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                      decoration: InputDecoration(hintText: context.localization.headMassage),
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
                      options: [context.localization.male, context.localization.female],
                      initialValues: _selectedGenders,
                      onSelectionChanged: (selected) {
                        setState(() {
                          _selectedGenders = selected;
                        });
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
                      initialValues: _selectedEthnicity,
                      onSelectionChanged: (selected) {
                        setState(() {
                          _selectedEthnicity = selected;
                        });
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
                        _durationController.text =
                            await selectDurationDialogBox(
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
                desc:context.localization.yourServiceSuccessfullyCreated,
                onSuccess: () {
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

class MultiSelectTagField extends StatefulWidget {
  final Function(List<String>) onSelectionChanged;
  final List<String>? initialValues;
  final List<String> options; // User can pass any list of options
  final Color? selectedColor;
  final Color? selectedTextColor;
  final Color? unselectedBorderColor;
  final Color? containerBorderColor;
  final double? containerBorderRadius;
  final double? tagBorderRadius;

  const MultiSelectTagField({
    Key? key,
    required this.onSelectionChanged,
    required this.options, // Required: user must provide options
    this.initialValues,
    this.selectedColor = const Color(0xffFEE2E2),
    this.selectedTextColor = const Color(0xffDC2626),
    this.unselectedBorderColor = const Color(0xffDC2626),
    this.containerBorderColor,
    this.containerBorderRadius = 38.0,
    this.tagBorderRadius = 16.0,
  }) : super(key: key);

  @override
  State<MultiSelectTagField> createState() => _MultiSelectTagFieldState();
}

class _MultiSelectTagFieldState extends State<MultiSelectTagField> {
  List<String> selectedItems = [];

  @override
  void initState() {
    super.initState();
    selectedItems = widget.initialValues ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      //  decoration: BoxDecoration(
      //    border: Border.all(
      //      color: widget.containerBorderColor ?? AppColors.strokeColor,
      //    ),
      //    borderRadius: BorderRadius.circular(widget.containerBorderRadius!.r),
      //    color: Colors.white,
      //  ),
      child: Wrap(
        spacing: 12.w,
        runSpacing: 12.h,
        children: widget.options.map((option) {
          final isSelected = selectedItems.contains(option);
          return GestureDetector(
            onTap: () {
              setState(() {
                if (isSelected) {
                  selectedItems.remove(option);
                } else {
                  selectedItems.add(option);
                }
              });
              widget.onSelectionChanged(selectedItems);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
              decoration: BoxDecoration(
                color: isSelected ? widget.selectedColor : Colors.white,
                borderRadius: BorderRadius.circular(widget.tagBorderRadius!.r),
                border: Border.all(
                  color: isSelected
                      ? Colors.transparent
                      : widget.unselectedBorderColor!,
                  width: isSelected ? 2 : 1,
                ),
              ),
              child: Text(
                option,
                style: TextStyle(
                  color: widget.selectedTextColor,
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
