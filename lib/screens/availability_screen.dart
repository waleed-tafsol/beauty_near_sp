import 'package:beauty_near_sp/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../utils/color_constant.dart';
import '../utils/enums.dart';
import '../view_models/availability_view_model.dart';
import '../widgets/custom_back_button.dart';
import '../widgets/dialog box/success_dialog_box.dart';
import 'bot_nav_bar_page.dart';

class AvailabilityEntry {
  final String day;
  final String startTime;
  final String endTime;

  AvailabilityEntry({
    required this.day,
    required this.startTime,
    required this.endTime,
  });
}

class AvailabilityScreen extends StatelessWidget {
  const AvailabilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AvailabilityViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: CustomAppBar(title: 'Availability'),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    'Set Your Availability',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textPrimaryColor,
                      height: 1.22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Please select the days and times you are available.',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darkGreyColor,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.h),
                  _buildDaysContainer(context, viewModel),
                  SizedBox(height: 30.h),
                  if (viewModel.availabilityList.isNotEmpty) ...[
                    Text(
                      'Your Availability',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    _buildAvailabilityList(viewModel),
                    SizedBox(height: 20.h),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildDaysContainer(
    BuildContext context,
    AvailabilityViewModel viewModel,
  ) {
    return Column(
      children: viewModel.days.asMap().entries.map((entry) {
        int index = entry.key;
        Days day = entry.value;
        return _buildExpansionTile(context, index, day, viewModel);
      }).toList(),
    );
  }

  Widget _buildExpansionTile(
    BuildContext context,
    int index,
    Days day,
    AvailabilityViewModel viewModel,
  ) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: AppColors.strokeColor, width: 1),
          ),
          child: ExpansionTile(
            key: ValueKey(index),
            initiallyExpanded: viewModel.expandedTileIndex == index,
            onExpansionChanged: (bool expanded) {
              if (expanded) {
                viewModel.setExpandedTileIndex(index);
              } else {
                viewModel.setExpandedTileIndex(null);
              }
            },
            trailing: Icon(
              Icons.add,
              color: AppColors.kPrimaryColor,
              size: 20.sp,
            ),
            title: Text(
              day.label,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimaryColor,
              ),
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Start Time',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textPrimaryColor,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              GestureDetector(
                                onTap: () => viewModel.selectStartTime(
                                  day.label,
                                  context,
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 8.h,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.strokeColor,
                                    ),
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          viewModel.startTimes[day.label] !=
                                                  null
                                              ? '${viewModel.startTimes[day.label]!.hour.toString().padLeft(2, '0')}:${viewModel.startTimes[day.label]!.minute.toString().padLeft(2, '0')}'
                                              : 'Select Time',
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color:
                                                viewModel.startTimes[day
                                                        .label] !=
                                                    null
                                                ? AppColors.textPrimaryColor
                                                : AppColors.darkGreyColor,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.access_time,
                                        size: 16.sp,
                                        color: AppColors.darkGreyColor,
                                      ),
                                    ],
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
                                'End Time',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textPrimaryColor,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              GestureDetector(
                                onTap: () =>
                                    viewModel.selectEndTime(day.label, context),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 8.h,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.strokeColor,
                                    ),
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          viewModel.endTimes[day.label] != null
                                              ? '${viewModel.endTimes[day.label]!.hour.toString().padLeft(2, '0')}:${viewModel.endTimes[day.label]!.minute.toString().padLeft(2, '0')}'
                                              : 'Select Time',
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color:
                                                viewModel.endTimes[day.label] !=
                                                    null
                                                ? AppColors.textPrimaryColor
                                                : AppColors.darkGreyColor,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.access_time,
                                        size: 16.sp,
                                        color: AppColors.darkGreyColor,
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
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed:
                            viewModel.startTimes[day.label] != null &&
                                viewModel.endTimes[day.label] != null
                            ? () {
                                if (viewModel.hasEntryForDay(day.label)) {
                                  viewModel.removeAvailability(day.label);
                                } else {
                                  viewModel.addAvailability(day.label);
                                }
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: viewModel.hasEntryForDay(day.label)
                              ? AppColors.kPrimaryColor
                              : AppColors.kPrimaryColor,
                          disabledBackgroundColor: AppColors.darkGreyColor
                              .withOpacity(0.3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                        ),
                        child: Text(
                          viewModel.hasEntryForDay(day.label)
                              ? 'Remove'
                              : 'Add',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
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
        SizedBox(height: 8.h),
      ],
    );
  }

  Widget _buildAvailabilityList(AvailabilityViewModel viewModel) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.strokeColor, width: 1),
      ),
      child: Column(
        children: viewModel.availabilityList
            .map((entry) => _buildAvailabilityItem(entry))
            .toList(),
      ),
    );
  }

  Widget _buildAvailabilityItem(AvailabilityEntry entry) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.strokeColor, width: 1),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              entry.day,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimaryColor,
              ),
            ),
          ),
          Text(
            '${entry.startTime} - ${entry.endTime}',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.darkGreyColor,
            ),
          ),
        ],
      ),
    );
  }
} 








// class AvailabilityScreen extends StatefulWidget {
//   const AvailabilityScreen({super.key});

//   @override
//   State<AvailabilityScreen> createState() => _AvailabilityScreenState();
// }

// class _AvailabilityScreenState extends State<AvailabilityScreen> {
//   final TextEditingController _startTimeController = TextEditingController();
//   final TextEditingController _endTimeController = TextEditingController();
//   TimeOfDay? _selectedStartTime;
//   TimeOfDay? _selectedEndTime;

//   List<String> selectedDays = [];

//   Future<void> _selectStartTime() async {
//     final TimeOfDay? picked = await showTimePicker(
//       context: context,
//       initialTime: _selectedStartTime ?? TimeOfDay.now(),
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: Theme.of(context).copyWith(
//             colorScheme: ColorScheme.light(
//               primary: AppColors.kPrimaryColor,
//               onPrimary: Colors.white,
//               surface: Colors.white,
//               onSurface: AppColors.textPrimaryColor,
//               secondary: AppColors.kPrimaryColor,
//               onSecondary: Colors.white,
//             ),
//             timePickerTheme: TimePickerThemeData(
//               backgroundColor: Colors.white,
//               hourMinuteTextColor: AppColors.textPrimaryColor,
//               dayPeriodTextColor: AppColors.kPrimaryColor,
//               dialHandColor: AppColors.kPrimaryColor,
//               dialBackgroundColor: Colors.grey.shade100,
//               hourMinuteColor: Colors.grey.shade100,
//               dayPeriodColor: AppColors.kPrimaryColor.withOpacity(0.1),
//               entryModeIconColor: AppColors.kPrimaryColor,
//             ),
//           ),
//           child: child!,
//         );
//       },
//     );
    
//     if (picked != null && picked != _selectedStartTime) {
//       setState(() {
//         _selectedStartTime = picked;
//         _startTimeController.text = '${picked.hour.toString().padLeft(2, '0')}:${picked.minute.toString().padLeft(2, '0')}';
//       });
//     }
//   }

//   Future<void> _selectEndTime() async {
//     final TimeOfDay? picked = await showTimePicker(
//       context: context,
//       initialTime: _selectedEndTime ?? TimeOfDay.now(),
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: Theme.of(context).copyWith(
//             colorScheme: ColorScheme.light(
//               primary: AppColors.kPrimaryColor,
//               onPrimary: Colors.white,
//               surface: Colors.white,
//               onSurface: AppColors.textPrimaryColor,
//               secondary: AppColors.kPrimaryColor,
//               onSecondary: Colors.white,
//             ),
//             timePickerTheme: TimePickerThemeData(
//               backgroundColor: Colors.white,
//               hourMinuteTextColor: AppColors.textPrimaryColor,
//               dayPeriodTextColor: AppColors.kPrimaryColor,
//               dialHandColor: AppColors.kPrimaryColor,
//               dialBackgroundColor: Colors.grey.shade100,
//               hourMinuteColor: Colors.grey.shade100,
//               dayPeriodColor: AppColors.kPrimaryColor.withOpacity(0.1),
//               entryModeIconColor: AppColors.kPrimaryColor,
//             ),
//           ),
//           child: child!,
//         );
//       },
//     );
    
//     if (picked != null && picked != _selectedEndTime) {
//       setState(() {
//         _selectedEndTime = picked;
//         _endTimeController.text = '${picked.hour.toString().padLeft(2, '0')}:${picked.minute.toString().padLeft(2, '0')}';
//       });
//     }
//   }

//   @override
//   void dispose() {
//     _startTimeController.dispose();
//     _endTimeController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20.w),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 77.h),

//               Center(
//                 child: Text(
//                   'Select Your Availability',
//                   style: TextStyle(
//                     fontSize: 20.sp,
//                     fontWeight: FontWeight.w500,
//                     color: AppColors.textPrimaryColor,
//                     height: 1.22,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               Center(
//                 child: Text(
//                   '',
//                   style: TextStyle(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w400,
//                     color: AppColors.darkGreyColor,
//                     height: 1.5,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),

//               SizedBox(height: 30.h),

//               _buildDaySelectionSection(),

//               SizedBox(height: 20.h),

//               Text(
//                 'Start Time',
//                 style: TextStyle(
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.w400,
//                   color: AppColors.textPrimaryColor,
//                   height: 1.22,
//                 ),
//               ),
//               SizedBox(height: 8.h),
//               GestureDetector(
//                 onTap: _selectStartTime,
//                 child: AbsorbPointer(
//                   child: TextField(
//                     controller: _startTimeController,
//                     decoration: InputDecoration(
//                       hintText: 'HH/MM',
//                       suffixIcon: Icon(
//                         Icons.access_time,
//                         size: 18.sp,
//                         color: AppColors.darkGreyColor,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20.h),

//               Text(
//                 'End Time',
//                 style: TextStyle(
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.w400,
//                   color: AppColors.textPrimaryColor,
//                   height: 1.22,
//                 ),
//               ),
//               SizedBox(height: 8.h),
//               GestureDetector(
//                 onTap: _selectEndTime,
//                 child: AbsorbPointer(
//                   child: TextField(
//                     controller: _endTimeController,
//                     decoration: InputDecoration(
//                       hintText: 'HH/MM',
//                       suffixIcon: Icon(
//                         Icons.access_time,
//                         size: 18.sp,
//                         color: AppColors.darkGreyColor,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.only(bottom: 24.h, left: 20.w, right: 20.w),
//           child: Row(
//             children: [
//               CustomBackButton(),

//               SizedBox(width: 10.w),

//               Expanded(
//                 child: ElevatedButton(
//                   onPressed: () {
//                     showSuccessDialog(
//                       screenContext: context,
//                       desc: 'Your Account Successfully\nCreated',
//                       onSuccess: () {
//                         Navigator.pushNamedAndRemoveUntil(
//                           context,
//                           BotNavPage.routeName,
//                               (route) => false,
//                         );
//                       },
//                     );
//                    // Navigator.pushNamed(context, cardDetailsScreen);
//                   },
//                   child: Text('Next'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildDaySelectionSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Select Days',
//           style: TextStyle(
//             fontSize: 14.sp,
//             fontWeight: FontWeight.w400,
//             color: AppColors.textPrimaryColor,
//             height: 1.22,
//           ),
//         ),
//         SizedBox(height: 9.h),
//         Wrap(
//           spacing: 12.w,
//           runSpacing: 12.h,
//           children: [
//             _buildDayTab('Mon'),
//             _buildDayTab('Tue'),
//             _buildDayTab('Wed'),
//             _buildDayTab('Thurs'),
//             _buildDayTab('Fri'),
//             _buildDayTab('Sat'),
//             _buildDayTab('Sun'),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _buildDayTab(String day) {
//     return GestureDetector(
//       onTap: (){
//         if(selectedDays.contains(day)){
//           setState(() {
//             selectedDays.remove(day);
//           });
//         }
//         else{
//           setState(() {
//             selectedDays.add(day);
//           });
//         }
//       },
//       child: Container(
//         width: 78.w,
//         height: 70.h,
//         decoration: BoxDecoration(
//           gradient: selectedDays.contains(day)
//               ? LinearGradient(
//                   colors: [AppColors.kPrimaryColor, Color(0xffDE6C75)],
//                   begin: Alignment.centerLeft,
//                   end: Alignment.centerRight,
//                 )
//               : null,
//           color: selectedDays.contains(day) ? null : Colors.white,
//           borderRadius: BorderRadius.circular(10.r),
//           border: Border.all(color: AppColors.strokeColor, width: 1),
//         ),
//         child: Center(
//           child: Text(
//             day,
//             style: TextStyle(
//               fontSize: 14.sp,
//               fontWeight: FontWeight.w400,
//               color: selectedDays.contains(day) ? Colors.white : AppColors.darkGreyColor,
//               height: 1.22,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
