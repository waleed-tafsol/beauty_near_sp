import 'package:beauty_near_sp/route_generator.dart';
import 'package:beauty_near_sp/utils/theme.dart';
import 'package:beauty_near_sp/view_models/theme_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppInit extends StatelessWidget {
  const AppInit({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeMode themeMode = context.watch<ThemeViewModel>().themeMode;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beauty Points',
      initialRoute: loginScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
      themeMode: themeMode,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
