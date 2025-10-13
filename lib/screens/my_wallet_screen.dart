import 'package:beauty_near_sp/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/color_constant.dart';
import '../widgets/stats_graph.dart';
import '../widgets/transaction_tile.dart';

class MyWalletScreen extends StatelessWidget {
  static const routeName = 'MyWalletScreen';
  const MyWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leadingWidth: 0,
        centerTitle: true,
        title: const Text('My Wallet'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 3.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 25.h),
              decoration: BoxDecoration(
                gradient: AppColors.primaryGradient,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Total Balance',
                    style: TextStyle(fontSize: 16.sp, color: Colors.white),
                  ),
                  // k1hSizedBox,
                  Text(
                    '\$524,410.00',
                    style: GoogleFonts.archivo(
                      fontSize: 25.5.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 45.h),
            Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Weekly Stats',
                      style: TextStyle(
                        fontSize: 17.6.sp,
                        color: AppColors.kBlackText,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: StatsGraph(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Latest Transactions',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xff1C1C1C),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.only(
                          top: 2.h,
                          bottom: context.notchAwareBottomPadding,
                        ),
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return const TransactionTile();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
