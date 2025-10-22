import 'package:beauty_near_sp/l10n/app_localizations.dart';
import 'package:beauty_near_sp/route_generator.dart';
import 'package:beauty_near_sp/utils/theme.dart';
import 'package:beauty_near_sp/view_models/language_view_model.dart';
import 'package:beauty_near_sp/view_models/theme_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

class AppInit extends StatefulWidget {
  const AppInit({super.key});

  @override
  State<AppInit> createState() => _AppInitState();
}

class _AppInitState extends State<AppInit> {
  @override
  void initState() {
    super.initState();
    // Initialize language view model
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<LanguageViewModel>().fetchInitialLocale();
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeMode themeMode = context.watch<ThemeViewModel>().themeMode;
    final Locale currentLocale = context
        .watch<LanguageViewModel>()
        .currentLocale;

    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Beauty Points',
      initialRoute: splashScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
      themeMode: themeMode,
      
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.lightTheme,
      locale: currentLocale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English
        Locale('es', ''), // Spanish
        Locale('fr', ''), // French
      ],
    );
  }
}
