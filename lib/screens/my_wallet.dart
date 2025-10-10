class MyWalletScreen extends GetView<MyWalletController> {
  static const routeName = 'MyWalletScreen';
  const MyWalletScreen({super.key});
  @override
  Widget build(BuildContext context) {
    addmoneyService.setScreen(Screens.home.text);
    final hController = Get.find<HomeController>();
    final homeData = hController.homePageResponse.value?.data;
    // final List<String> timeFilters = [
    //   'Today',
    //   'Yesterday',
    //   'Last 7 days',
    //   'Last 30 days',
    //   'This month',
    //   'Last month',
    //   'Last 3 months',
    //   'Last 6 months',
    //   'This year',
    //   'Last year',
    //   'All time'
    // ];
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(size: 24.h),
        forceMaterialTransparency: true,
        title: const Text('My Wallet'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 190.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 50.w,
                      vertical: 24.h,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/png/myaccbg.png'),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff3D3D73).withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 15,
                          offset: const Offset(2, 12),
                        ),
                      ],
                      // gradient: const LinearGradient(
                      //     colors: [Color(0xff0C0C17), Color(0xff31315D)],
                      //     begin: Alignment.topLeft,
                      //     end: Alignment.bottomRight),
                      borderRadius: k15BorderRadius,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   'Total Balance',
                        //   style: TextStyle(fontSize: 16.sp, color: Colors.white),
                        // ),
                        // k1hSizedBox,
                        // Text(
                        //   '\$524,410.00',
                        //   style: TextStyle(
                        //       fontSize: 40.sp,
                        //       color: Colors.white,
                        //       fontWeight: FontWeight.w600),
                        // ),
                        Stack(
                          children: [
                            // Border (stroke)
                            Text(
                              '€${homeData?.balance?.toStringAsFixed(2)} ',
                              style: TextStyle(
                                fontSize: 40.sp,
                                fontWeight: FontWeight.w600,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 1
                                  ..color = Color(0xFFFFFFFF), // white border
                              ),
                            ),
                            // Fill (gradient)
                            Text(
                              '€${homeData?.balance?.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 40.sp,
                                fontWeight: FontWeight.w600,
                                foreground: Paint()
                                  ..shader =
                                      LinearGradient(
                                        colors: const [
                                          Color(0xFF958F83),
                                          Color(0xFF958F83), // start
                                          Color(0xFFFFFFFF), // end
                                        ],
                                        stops: const [0.1, 0.3, 0.7],
                                      ).createShader(
                                        Rect.fromLTWH(0.0, 0.0, 300.0, 70.0),
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 20.h,
                    left: 52.w,
                    child: SvgPicture.asset(
                      svgAssets.logo4,
                      height: 36.h,
                      width: 28.89.w,
                    ),
                  ),
                  Positioned(
                    bottom: 16.h,
                    left: 54.w,
                    child: Stack(
                      children: [
                        // Border (stroke)
                        Text(
                          'Wabisabi Pay',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 1
                              ..color = Color(0xFFFFFFFF), // white border
                          ),
                        ),
                        // Fill (gradient)
                        Text(
                          'Wabisabi Pay',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            foreground: Paint()
                              ..shader =
                                  LinearGradient(
                                    colors: const [
                                      Color(0xFF958F83),
                                      Color(0xFF958F83), // start
                                      Color(0xFFFFFFFF), // end
                                    ],
                                    stops: const [0.1, 0.3, 0.7],
                                  ).createShader(
                                    Rect.fromLTWH(0.0, 0.0, 300.0, 70.0),
                                  ),
                          ),
                        ),
                      ],
                    ),
                    // SvgPicture.asset(svgAssets.Wabisabipay,
                    //   height: 12.h,
                    //   width: 67.w,
                    // ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Obx(
                () => controller.selectedGraphKey.value == null
                    ? sizedShimmer(height: 50.h, width: 130.w)
                    : AbsorbPointer(
                        absorbing: controller.isGraphDataLoading.value,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<GraphKeys>(
                            isExpanded: false,
                            hint: Text(
                              capitalizeFirstLetter(
                                controller.selectedGraphKey.value?.keyValue ??
                                    "",
                              ),
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Theme.of(
                                  context,
                                ).textTheme.bodySmall!.color,
                              ),
                            ),
                            items: controller.graphKeys
                                .map(
                                  (GraphKeys item) =>
                                      DropdownMenuItem<GraphKeys>(
                                        value: item,
                                        child: Text(
                                          capitalizeFirstLetter(
                                            item.keyValue ?? "",
                                          ),
                                        ),
                                      ),
                                )
                                .toList(),
                            onChanged: (GraphKeys? value) {
                              if (value != null) {
                                controller.updateSelectedGraphKey(value);
                              }
                            },
                            value:
                                controller.graphKeys.contains(
                                  controller.selectedGraphKey.value,
                                )
                                ? controller.selectedGraphKey.value
                                : null,
                            buttonStyleData: ButtonStyleData(
                              // height: 40.h,
                              // width: 125.w,
                              padding: EdgeInsets.symmetric(horizontal: 4.w),
                            ),
                            dropdownStyleData: DropdownStyleData(
                              // maxHeight: 300.h,
                              // width: 200.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:
                                    Get.find<ThemeController>()
                                            .themeMode
                                            .value ==
                                        ThemeMode.dark
                                    ? AppColors.kDarkFieldFillColor
                                    : Colors.white,
                              ),
                              offset: Offset(0, -5),
                              scrollbarTheme: ScrollbarThemeData(
                                thumbColor: MaterialStateProperty.all(
                                  AppColors.kPrimaryColor,
                                ),
                                radius: Radius.circular(8),
                                thickness: MaterialStateProperty.all(5),
                              ),
                            ),
                            iconStyleData: IconStyleData(
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 24.sp,
                            ),
                          ),
                        ),
                      ),
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.w),
                child: StatsGraph(),
              ),
              SizedBox(height: 24.h),
              Container(
                // height: 450.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  border:
                      Get.find<ThemeController>().themeMode.value ==
                          ThemeMode.dark
                      ? Border.all(
                          color: AppColors.kPrimaryColor.withOpacity(0.6),
                          width: 1,
                        )
                      : null,
                  color:
                      Get.find<ThemeController>().themeMode.value ==
                          ThemeMode.dark
                      ? Colors.grey.shade200.withOpacity(0.5)
                      : Colors.white,
                  borderRadius: k10BorderRadius,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                    vertical: 15.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(() {
                        return controller.selectedGraphKey.value == null
                            ? sizedShimmer()
                            : Text(
                                capitalizeFirstLetter(
                                  controller.selectedGraphKey.value?.keyValue ??
                                      "",
                                ),
                                style: TextStyle(fontSize: 16.sp),
                              );
                      }),
                      Obx(() {
                        final List<Transaction> transactions =
                            controller.transactions;
                        return ListViewBuilderWithEmptyLoadingRefresh(
                          padding: EdgeInsets.only(top: 20.h),
                          physics: NeverScrollableScrollPhysics(),
                          isLoading:
                              controller.isGraphDataLoading.value ||
                              controller.selectedGraphKey.value == null,
                          shrinkWrap: true,
                          items: transactions,
                          itemBuilder: (context, index) {
                            final transaction = transactions[index];
                            final isLastTransaction =
                                index == transactions.length - 1;
                            return TransactionTile(
                              transaction: transaction,
                              isLast: isLastTransaction,
                            );
                          },
                          emptyWidget: EmptyListWidget(
                            padding: EdgeInsets.only(top: 2.h),
                            text: "No Transection",
                            icon: Icons.receipt_long_outlined,
                          ),
                          shimmerItem: TransactionTileShimmer(),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Expanded _buildTransactions(MyWalletController controller) {
  //   return Expanded(
  //     child: Obx(
  //       () {
  //         final List<Transaction> transactions = controller.transactions;
  //         if (controller.isGraphDataLoading.value ||
  //             controller.selectedGraphKey.value == null) {
  //           return Padding(
  //             padding: EdgeInsets.only(top: 20.h),
  //             child: const TransactionListShimmer(itemCount: 5),
  //           );
  //         } else if (transactions.isEmpty) {
  //           return ListView(
  //             children: [
  //               SizedBox(height: 100.h),
  //               Center(
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     Icon(
  //                       Icons.receipt_long,
  //                       size: 80.sp,
  //                       color: Colors.grey[400],
  //                     ),
  //                     SizedBox(height: 16.h),
  //                     Text(
  //                       'No transactions yet',
  //                       style: GoogleFonts.ubuntu(
  //                         textStyle: TextStyle(
  //                           fontSize: 16.sp,
  //                           color: Colors.grey,
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           );
  //         }
  //         return ListView.builder(
  //           padding: EdgeInsets.only(top: 20.h),
  //           itemCount: transactions.length,
  //           itemBuilder: (context, index) {
  //             String svgImage = svgAssets.gasStation; // Default
  //             final transaction = transactions[index];
  //             // Assign different SVG images based on transaction type if available
  //             if (transaction.drCr == 'Credit') {
  //               svgImage = svgAssets.shoppingCart;
  //             } else if (transaction.drCr == 'gas') {
  //               svgImage = svgAssets.gasStation;
  //             }
  //             return TransactionTile(
  //               transaction: transaction,
  //               SvgImg: svgImage,
  //             );
  //           },
  //         );
  //       },
  //     ),
  //   );
  // }
  // Stack _buildWalletCard(Data? homeData) {
  //   return Stack(
  //     children: [
  //       Container(
  //         width: double.infinity,
  //         height: 190.h,
  //         padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 24.h),
  //         decoration: BoxDecoration(
  //           image: DecorationImage(
  //               image: AssetImage(
  //                 'assets/png/myaccbg.png',
  //               ),
  //               fit: BoxFit.fill),
  //           boxShadow: [
  //             BoxShadow(
  //               color: const Color(0xff3D3D73).withOpacity(0.2),
  //               spreadRadius: 3,
  //               blurRadius: 15,
  //               offset: const Offset(2, 12),
  //             ),
  //           ],
  //           // gradient: const LinearGradient(
  //           //     colors: [Color(0xff0C0C17), Color(0xff31315D)],
  //           //     begin: Alignment.topLeft,
  //           //     end: Alignment.bottomRight),
  //           borderRadius: k15BorderRadius,
  //         ),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             // Text(
  //             //   'Total Balance',
  //             //   style: TextStyle(fontSize: 16.sp, color: Colors.white),
  //             // ),
  //             // k1hSizedBox,
  //             // Text(
  //             //   '\$524,410.00',
  //             //   style: TextStyle(
  //             //       fontSize: 40.sp,
  //             //       color: Colors.white,
  //             //       fontWeight: FontWeight.w600),
  //             // ),
  //             Stack(
  //               children: [
  //                 // Border (stroke)
  //                 Text(
  //                   '\$${homeData?.balance?.toStringAsFixed(2)} ',
  //                   style: TextStyle(
  //                     fontSize: 40.sp,
  //                     fontWeight: FontWeight.w600,
  //                     foreground: Paint()
  //                       ..style = PaintingStyle.stroke
  //                       ..strokeWidth = 1
  //                       ..color = Color(0xFFFFFFFF), // white border
  //                   ),
  //                 ),
  //                 // Fill (gradient)
  //                 Text(
  //                   '\$${homeData?.balance?.toStringAsFixed(2)}',
  //                   style: TextStyle(
  //                     fontSize: 40.sp,
  //                     fontWeight: FontWeight.w600,
  //                     foreground: Paint()
  //                       ..shader = LinearGradient(
  //                         colors: const [
  //                           Color(0xFF958F83),
  //                           Color(0xFF958F83), // start
  //                           Color(0xFFFFFFFF), // end
  //                         ],
  //                         stops: const [0.1, 0.3, 0.7],
  //                       ).createShader(Rect.fromLTWH(0.0, 0.0, 300.0, 70.0)),
  //                   ),
  //                 ),
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //       Positioned(
  //         top: 20.h,
  //         left: 52.w,
  //         child: SvgPicture.asset(
  //           svgAssets.logo4,
  //           height: 36.h,
  //           width: 28.89.w,
  //         ),
  //       ),
  //       Positioned(
  //           bottom: 16.h,
  //           left: 54.w,
  //           child: Stack(
  //             children: [
  //               // Border (stroke)
  //               Text(
  //                 'Wabisabi Pay',
  //                 style: TextStyle(
  //                   fontSize: 18.sp,
  //                   fontWeight: FontWeight.w400,
  //                   foreground: Paint()
  //                     ..style = PaintingStyle.stroke
  //                     ..strokeWidth = 1
  //                     ..color = Color(0xFFFFFFFF), // white border
  //                 ),
  //               ),
  //               // Fill (gradient)
  //               Text(
  //                 'Wabisabi Pay',
  //                 style: TextStyle(
  //                   fontSize: 18.sp,
  //                   fontWeight: FontWeight.w400,
  //                   foreground: Paint()
  //                     ..shader = LinearGradient(
  //                       colors: const [
  //                         Color(0xFF958F83),
  //                         Color(0xFF958F83), // start
  //                         Color(0xFFFFFFFF), // end
  //                       ],
  //                       stops: const [0.1, 0.3, 0.7],
  //                     ).createShader(Rect.fromLTWH(0.0, 0.0, 300.0, 70.0)),
  //                 ),
  //               ),
  //             ],
  //           )
  //           // SvgPicture.asset(svgAssets.Wabisabipay,
  //           //   height: 12.h,
  //           //   width: 67.w,
  //           // ),
  //           )
  //     ],
  //   );
  // }
}
