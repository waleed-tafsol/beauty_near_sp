import 'package:beauty_near_sp/app_init.dart';
import 'package:beauty_near_sp/services/locator.dart';
import 'package:beauty_near_sp/utils/screen_size.dart';
import 'package:beauty_near_sp/view_models/add_service_view_model.dart';
import 'package:beauty_near_sp/view_models/availability_view_model.dart';
import 'package:beauty_near_sp/view_models/language_view_model.dart';
import 'package:beauty_near_sp/view_models/my_booking_view_model.dart';
import 'package:beauty_near_sp/view_models/personal_information_view_model.dart';
import 'package:beauty_near_sp/view_models/theme_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'view_models/auth_view_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GoogleFonts.pendingFonts([GoogleFonts.montserratTextTheme()]);
  await ScreenUtil.ensureScreenSize();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await initializeServices();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeViewModel()),
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(
          create: (context) => PersonalInformationViewModel(),
        ),
        ChangeNotifierProvider(create: (_) => LanguageViewModel(), lazy: false),
        ChangeNotifierProvider(create: (_) => AvailabilityViewModel()),
        ChangeNotifierProvider(create: (_) => AddServiceViewModel()),
        ChangeNotifierProvider(create: (_) => MyBookingViewModel()),
      ],
      child: ScreenUtilInit(
        designSize: getDesignSize(),
        minTextAdapt: true,
        ensureScreenSize: true,
        splitScreenMode: true,
        child: const AppInit(),
      ),
    ),
  );
}
