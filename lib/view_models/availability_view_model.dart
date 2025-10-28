import 'package:beauty_near_sp/utils/extensions.dart';
import 'package:flutter/material.dart';

import '../screens/availability_screen.dart';
import '../utils/enums.dart';

class AvailabilityViewModel extends ChangeNotifier {
  final List<Days> _days =  Days.values;

  final Map<String, TimeOfDay?> _startTimes = {};
  final Map<String, TimeOfDay?> _endTimes = {};
  final List<AvailabilityEntry> _availabilityList = [];
  final List<DateTimeRange> offDayRanges = [];
  // Getters
  List<Days> get days => _days;
  Map<String, TimeOfDay?> get startTimes => _startTimes;
  Map<String, TimeOfDay?> get endTimes => _endTimes;
  List<AvailabilityEntry> get availabilityList => _availabilityList;
  List<ExpansibleController> controllers = List.generate(
    Days.values.length,
    (index) => ExpansibleController(),
  );

  AvailabilityViewModel() {
    _initializeDays();
  }

  void _initializeDays() {
    for (Days day in _days) {
      _startTimes[day.label] = null;
      _endTimes[day.label] = null;
    }
  }

  Future<void> selectStartTime(String day, BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _startTimes[day] ?? TimeOfDay.now(),
    );

    if (picked != null) {
      _startTimes[day] = picked;
      notifyListeners();
    }
  }

  Future<void> selectEndTime(String day, BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _endTimes[day] ?? TimeOfDay.now(),
    );

    if (picked != null) {
      _endTimes[day] = picked;
      notifyListeners();
    }
  }

  bool hasEntryForDay(String day) {
    return _availabilityList.any((entry) => entry.day == day);
  }

  void addAvailability(String day) {
    if (_startTimes[day] != null && _endTimes[day] != null) {
      final startTime =
          '${_startTimes[day]!.hour.toString().padLeft(2, '0')}:${_startTimes[day]!.minute.toString().padLeft(2, '0')}';
      final endTime =
          '${_endTimes[day]!.hour.toString().padLeft(2, '0')}:${_endTimes[day]!.minute.toString().padLeft(2, '0')}';

      // Check if an entry with the same day already exists
      final existingEntryIndex = _availabilityList.indexWhere(
        (entry) => entry.day == day,
      );

      if (existingEntryIndex != -1) {
        // Replace existing entry for the same day
        _availabilityList[existingEntryIndex] = AvailabilityEntry(
          day: day,
          startTime: startTime,
          endTime: endTime,
        );
      } else {
        // Add new entry if no entry exists for this day
        _availabilityList.add(
          AvailabilityEntry(day: day, startTime: startTime, endTime: endTime),
        );
      }
      notifyListeners();
    }
  }

  void removeAvailability(String day) {
    _availabilityList.removeWhere((entry) => entry.day == day);
    // Clear the time fields for this day
    _startTimes[day] = null;
    _endTimes[day] = null;
    notifyListeners();
  }

  void setExpandedTileIndex(int? index) {
    if (index == null) {
      return;
    }
    for (int i = 0; i < controllers.length; i++) {
      if (i == index) {
        continue;
      }
      controllers[i].collapse();
    }
    // notifyListeners();
  }

  void setOffDay(DateTimeRange range) async {
    if (offDayRanges.contains(range)) {
      return;
    }
    final isInBetween = offDayRanges.any(
      (r) => range.start.isAfter(r.start) && range.end.isBefore(r.end),
    );
    if (isInBetween) {
      showError('Off days cannot overlap.');
      return;
    }
    offDayRanges.add(range);
    notifyListeners();
  }

  void removeOffDay(int index) {
    offDayRanges.removeAt(index);
    notifyListeners();
  }

  void toggleAvailability(String day) {
    if (hasEntryForDay(day)) {
      removeAvailability(day);
    } else {
      addAvailability(day);
    }
  }
}
