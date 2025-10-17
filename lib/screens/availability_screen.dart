import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../route_generator.dart';
import '../utils/color_constant.dart';
import '../widgets/custom_back_button.dart';
import '../widgets/dialog box/success_dialog_box.dart';
import 'bot_nav_bar_page.dart';

class AvailabilityScreen extends StatefulWidget {
  const AvailabilityScreen({super.key});

  @override
  State<AvailabilityScreen> createState() => _AvailabilityScreenState();
}

class _AvailabilityScreenState extends State<AvailabilityScreen> {
  final TextEditingController _startTimeController = TextEditingController();
  final TextEditingController _endTimeController = TextEditingController();
  TimeOfDay? _selectedStartTime;
  TimeOfDay? _selectedEndTime;

  List<String> selectedDays = [];

  Future<void> _selectStartTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedStartTime ?? TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.kPrimaryColor,
              onPrimary: Colors.white,
              surface: Colors.white,
              onSurface: AppColors.textPrimaryColor,
              secondary: AppColors.kPrimaryColor,
              onSecondary: Colors.white,
            ),
            timePickerTheme: TimePickerThemeData(
              backgroundColor: Colors.white,
              hourMinuteTextColor: AppColors.textPrimaryColor,
              dayPeriodTextColor: AppColors.kPrimaryColor,
              dialHandColor: AppColors.kPrimaryColor,
              dialBackgroundColor: Colors.grey.shade100,
              hourMinuteColor: Colors.grey.shade100,
              dayPeriodColor: AppColors.kPrimaryColor.withOpacity(0.1),
              entryModeIconColor: AppColors.kPrimaryColor,
            ),
          ),
          child: child!,
        );
      },
    );
    
    if (picked != null && picked != _selectedStartTime) {
      setState(() {
        _selectedStartTime = picked;
        _startTimeController.text = '${picked.hour.toString().padLeft(2, '0')}:${picked.minute.toString().padLeft(2, '0')}';
      });
    }
  }

  Future<void> _selectEndTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedEndTime ?? TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.kPrimaryColor,
              onPrimary: Colors.white,
              surface: Colors.white,
              onSurface: AppColors.textPrimaryColor,
              secondary: AppColors.kPrimaryColor,
              onSecondary: Colors.white,
            ),
            timePickerTheme: TimePickerThemeData(
              backgroundColor: Colors.white,
              hourMinuteTextColor: AppColors.textPrimaryColor,
              dayPeriodTextColor: AppColors.kPrimaryColor,
              dialHandColor: AppColors.kPrimaryColor,
              dialBackgroundColor: Colors.grey.shade100,
              hourMinuteColor: Colors.grey.shade100,
              dayPeriodColor: AppColors.kPrimaryColor.withOpacity(0.1),
              entryModeIconColor: AppColors.kPrimaryColor,
            ),
          ),
          child: child!,
        );
      },
    );
    
    if (picked != null && picked != _selectedEndTime) {
      setState(() {
        _selectedEndTime = picked;
        _endTimeController.text = '${picked.hour.toString().padLeft(2, '0')}:${picked.minute.toString().padLeft(2, '0')}';
      });
    }
  }

  @override
  void dispose() {
    _startTimeController.dispose();
    _endTimeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 77.h),

              Center(
                child: Text(
                  'Select Your Availability',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimaryColor,
                    height: 1.22,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10.h),
              Center(
                child: Text(
                  '',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkGreyColor,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 30.h),

              _buildDaySelectionSection(),

              SizedBox(height: 20.h),

              Text(
                'Start Time',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textPrimaryColor,
                  height: 1.22,
                ),
              ),
              SizedBox(height: 8.h),
              GestureDetector(
                onTap: _selectStartTime,
                child: AbsorbPointer(
                  child: TextField(
                    controller: _startTimeController,
                    decoration: InputDecoration(
                      hintText: 'HH/MM',
                      suffixIcon: Icon(
                        Icons.access_time,
                        size: 18.sp,
                        color: AppColors.darkGreyColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),

              Text(
                'End Time',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textPrimaryColor,
                  height: 1.22,
                ),
              ),
              SizedBox(height: 8.h),
              GestureDetector(
                onTap: _selectEndTime,
                child: AbsorbPointer(
                  child: TextField(
                    controller: _endTimeController,
                    decoration: InputDecoration(
                      hintText: 'HH/MM',
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
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: 24.h, left: 20.w, right: 20.w),
          child: Row(
            children: [
              CustomBackButton(),

              SizedBox(width: 10.w),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    showSuccessDialog(
                      screenContext: context,
                      desc: 'Your Account Successfully\nCreated',
                      onSuccess: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          BotNavPage.routeName,
                              (route) => false,
                        );
                      },
                    );
                   // Navigator.pushNamed(context, paymentMethodScreen);
                  },
                  child: Text('Next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDaySelectionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Days',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.textPrimaryColor,
            height: 1.22,
          ),
        ),
        SizedBox(height: 9.h),
        Wrap(
          spacing: 12.w,
          runSpacing: 12.h,
          children: [
            _buildDayTab('Mon'),
            _buildDayTab('Tue'),
            _buildDayTab('Wed'),
            _buildDayTab('Thurs'),
            _buildDayTab('Fri'),
            _buildDayTab('Sat'),
            _buildDayTab('Sun'),
          ],
        ),
      ],
    );
  }

  Widget _buildDayTab(String day) {
    return GestureDetector(
      onTap: (){
        if(selectedDays.contains(day)){
          setState(() {
            selectedDays.remove(day);
          });
        }
        else{
          setState(() {
            selectedDays.add(day);
          });
        }
      },
      child: Container(
        width: 78.w,
        height: 70.h,
        decoration: BoxDecoration(
          gradient: selectedDays.contains(day)
              ? LinearGradient(
                  colors: [AppColors.kPrimaryColor, Color(0xffDE6C75)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
              : null,
          color: selectedDays.contains(day) ? null : Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.strokeColor, width: 1),
        ),
        child: Center(
          child: Text(
            day,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: selectedDays.contains(day) ? Colors.white : AppColors.darkGreyColor,
              height: 1.22,
            ),
          ),
        ),
      ),
    );
  }
}
