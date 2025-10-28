import 'package:beauty_near_sp/route_generator.dart';
import 'package:beauty_near_sp/utils/color_constant.dart';
import 'package:beauty_near_sp/utils/extensions.dart';
import 'package:beauty_near_sp/view_models/my_booking_view_model.dart';
import 'package:beauty_near_sp/widgets/custom_booking_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MyBookingScreen extends StatelessWidget {
  const MyBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MyBookingViewModel>(
      builder: (context, viewModel, child) {
        final tabs = [
          navigatorKey.currentContext!.localization.request,
          navigatorKey.currentContext!.localization.upcoming,
          navigatorKey.currentContext!.localization.past,
        ];

        return Scaffold(
          appBar: AppBar(
            forceMaterialTransparency: true,
            backgroundColor: AppColors.kScaffoldColor,
            centerTitle: true,
            title: Text(
              context.localization.myBookings,
              style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w500),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Column(
              children: [
                SizedBox(height: 20.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: tabs.asMap().entries.map((entry) {
                      int index = entry.key;
                      String tabName = entry.value;
                      bool isSelected = viewModel.selectedTabIndex == index;

                      return GestureDetector(
                        onTap: () {
                          viewModel.updateSelectedTabIndex(index);
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10.w),
                          height: 35.h,
                          width: 110.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70.r),
                            gradient: isSelected
                                ? LinearGradient(
                                    colors: [
                                      AppColors.kPrimaryColor,
                                      Color(0xffDE6C75),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  )
                                : null,
                            color: isSelected ? null : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              tabName,
                              style: TextStyle(
                                color: isSelected
                                    ? Colors.white
                                    : AppColors.darkGreyColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 20.h),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(
                      bottom: context.notchAwareBottomPadding,
                    ),
                    itemCount: viewModel.getFilteredBookings().length,
                    itemBuilder: (context, index) {
                      return _buildBookingCard(context, index, viewModel);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildBookingCard(
    BuildContext context,
    int index,
    MyBookingViewModel viewModel,
  ) {
    final booking = viewModel.getFilteredBookings()[index];

    return CustomBookingCard(
      bookingId: booking['id'] as String,
      customerName: booking['customerName'] as String,
      amount: booking['amount'] as String,
      month: booking['month'] as String,
      day: booking['day'] as String,
      dayName: booking['dayName'] as String,
      status: booking['status'] as String,
      selectedTabIndex: viewModel.selectedTabIndex,
      onStatusUpdate: (bookingId, newStatus) {
        viewModel.updateBookingStatus(bookingId, newStatus);
      },
    );
  }
}
