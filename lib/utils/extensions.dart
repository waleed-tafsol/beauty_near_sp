import 'package:beauty_near_sp/l10n/app_localizations_en.dart';
import 'package:beauty_near_sp/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

import '../l10n/app_localizations.dart';
import '../route_generator.dart';
import 'assets.dart';

extension ContextUtils on BuildContext {
  bool get hasBottomNotch {
    final mediaQuery = MediaQuery.of(this);
    final bottomPadding = mediaQuery.padding.bottom;
    return bottomPadding > 0;
  }

  double get bottomNotch {
    final mediaQuery = MediaQuery.of(this);
    return mediaQuery.padding.bottom;
  }

  double get notchAwareBottomPadding {
    if (bottomNotch > 0) {
      return 25.h + bottomNotch;
    } else {
      return 150.h;
    }
  }

  AppLocalizations get localization {
    final currentLocalization = AppLocalizations.of(this);
    if (currentLocalization == null) {
      return AppLocalizationsEn();
    }
    return currentLocalization;
  }
}

extension LocaleUtils on Locale {
  String get name {
    switch (languageCode) {
      case 'en':
        return 'English';
      case 'fr':
        return 'Français';
      case 'es':
        return 'Español';
      default:
        throw Exception('Invalid language code: $languageCode');
    }
  }

  String get svg {
    switch (languageCode) {
      case 'en':
        return SvgAssets.us;
      case 'fr':
        return SvgAssets.french;
      case 'es':
        return SvgAssets.spanish;
      default:
        throw Exception('Invalid language code: $languageCode');
    }
  }
}

extension DateUtils on DateTime {
  String get formattedDate {
    return DateFormat('dd MMM, yyyy').format(this);
  }
}

extension ChangeNotifierUtils on ChangeNotifier {
  Future<void> showError(String message) async {
    ScaffoldFeatureController? banner;
    banner = ScaffoldMessenger.of(navigatorKey.currentContext!)
        .showMaterialBanner(
          MaterialBanner(
            leading: Icon(Iconsax.danger, color: Colors.white),
            content: Text(message),
            surfaceTintColor: Colors.white,
            contentTextStyle: TextStyle(color: Colors.white),
            backgroundColor: AppColors.kPrimaryColor,
            actions: [
              IconButton(
                onPressed: () {
                  banner?.close();
                },
                icon: Icon(Icons.close, color: Colors.white),
              ),
            ],
          ),
        );
    await Future.delayed(Duration(seconds: 2));
    banner.close();
  }
}
