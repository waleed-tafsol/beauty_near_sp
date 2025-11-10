
import 'package:beauty_near_sp/utils/enums.dart';
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
final weekdayMapFullName = {
  Days.monday.label: DateTime.monday,
  Days.tuesday.label: DateTime.tuesday,
  Days.wednesday.label: DateTime.wednesday,
  Days.thursday.label: DateTime.thursday,
  Days.friday.label: DateTime.friday,
  Days.saturday.label: DateTime.saturday,
  Days.sunday.label: DateTime.sunday,
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

String translateWeekdayFullName(String abbrWeekday) {
  final context = navigatorKey.currentContext;
  if (context == null) {
    return abbrWeekday;
  }
  final locale = context.read<LanguageViewModel>().currentLocale;
  return DateFormat.EEEE(
    locale.languageCode,
  ).format(DateTime(2024, 1, weekdayMapFullName[abbrWeekday]!));
}
