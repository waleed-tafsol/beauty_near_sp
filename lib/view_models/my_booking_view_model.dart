import 'package:flutter/material.dart';

class MyBookingViewModel extends ChangeNotifier {
  int _selectedTabIndex = 0;
  final List<Map<String, dynamic>> _allBookings = [
    {
      'id': '1',
      'customerName': 'Customer Name',
      'amount': '\$648.00',
      'month': 'NOVEMBER',
      'day': '23',
      'dayName': 'Sun.',
      'status': 'pending', // pending, accepted, cancelled, completed
      'date': DateTime.now().add(Duration(days: 1)),
    },
    {
      'id': '2',
      'customerName': 'Customer Name',
      'amount': '\$648.00',
      'month': 'NOVEMBER',
      'day': '24',
      'dayName': 'Mon.',
      'status': 'pending',
      'date': DateTime.now().add(Duration(days: 2)),
    },
    {
      'id': '3',
      'customerName': 'Customer Name',
      'amount': '\$648.00',
      'month': 'NOVEMBER',
      'day': '25',
      'dayName': 'Tue.',
      'status': 'pending',
      'date': DateTime.now().add(Duration(days: 3)),
    },
    {
      'id': '4',
      'customerName': 'Customer Name',
      'amount': '\$648.00',
      'month': 'NOVEMBER',
      'day': '26',
      'dayName': 'Wed.',
      'status': 'pending',
      'date': DateTime.now().add(Duration(days: 4)),
    },
    {
      'id': '5',
      'customerName': 'Customer Name',
      'amount': '\$648.00',
      'month': 'NOVEMBER',
      'day': '27',
      'dayName': 'Thu.',
      'status': 'pending',
      'date': DateTime.now().add(Duration(days: 5)),
    },
    {
      'id': '6',
      'customerName': 'Customer Name',
      'amount': '\$648.00',
      'month': 'NOVEMBER',
      'day': '28',
      'dayName': 'Fri.',
      'status': 'pending',
      'date': DateTime.now().add(Duration(days: 6)),
    },
    // Past bookings
    {
      'id': '7',
      'customerName': 'Customer Name',
      'amount': '\$648.00',
      'month': 'NOVEMBER',
      'day': '15',
      'dayName': 'Fri.',
      'status': 'completed',
      'date': DateTime.now().subtract(Duration(days: 7)),
    },
    {
      'id': '8',
      'customerName': 'Customer Name',
      'amount': '\$648.00',
      'month': 'NOVEMBER',
      'day': '14',
      'dayName': 'Thu.',
      'status': 'pending',
      'date': DateTime.now().subtract(Duration(days: 8)),
    },
  ];

  int get selectedTabIndex => _selectedTabIndex;
  List<Map<String, dynamic>> get allBookings => _allBookings;

  void updateSelectedTabIndex(int index) {
    _selectedTabIndex = index;
    notifyListeners();
  }

  List<Map<String, dynamic>> getFilteredBookings() {
    switch (_selectedTabIndex) {
      case 0:
        return _allBookings
            .where((booking) => booking['status'] == 'pending')
            .toList();
      case 1:
        return _allBookings
            .where(
              (booking) =>
                  [
                    'accepted',
                    'cancelled',
                    'pending',
                  ].contains(booking['status']) &&
                  booking['date'].isAfter(DateTime.now()),
            )
            .toList();
      case 2:
        return _allBookings
            .where(
              (booking) =>
                  ['completed', 'pending'].contains(booking['status']) &&
                  booking['date'].isBefore(DateTime.now()),
            )
            .toList();
      default:
        return [];
    }
  }

  void updateBookingStatus(String bookingId, String newStatus) {
    int index = _allBookings.indexWhere(
      (booking) => booking['id'] == bookingId,
    );
    if (index != -1) {
      _allBookings[index]['status'] = newStatus;
      notifyListeners();
    }
  }
}
