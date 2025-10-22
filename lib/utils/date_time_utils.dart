import 'dart:ui';

import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../route_generator.dart';
import '../view_models/language_view_model.dart';

final weekdayMap = {
  'Mon': DateTime.monday,
  'Tue': DateTime.tuesday,
  'Wed': DateTime.wednesday,
  'Thu': DateTime.thursday,
  'Fri': DateTime.friday,
  'Sat': DateTime.saturday,
  'Sun': DateTime.sunday,
};

String translateWeekday(String abbrWeekday) {
  final context = navigatorKey.currentContext;
  if (context == null) {
    return abbrWeekday;
  }
  final locale = context.read<LanguageViewModel>().currentLocale;
  return DateFormat.E(
    locale.languageCode,
  ).format(DateTime(2024, 1, weekdayMap[abbrWeekday]!));
}
