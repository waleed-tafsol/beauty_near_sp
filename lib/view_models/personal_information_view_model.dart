import 'package:flutter/foundation.dart';

class PersonalInformationViewModel extends ChangeNotifier {
  String? _selectedCountry;
  
  final List<String> _countries = [
    'United States',
    'Canada',
    'United Kingdom',
    'Australia',
    'Germany',
  ];

  // Getters
  String? get selectedCountry => _selectedCountry;
  List<String> get countries => _countries;

  // Methods
  void setSelectedCountry(String? country) {
    _selectedCountry = country;
    notifyListeners();
  }

  void clearSelectedCountry() {
    _selectedCountry = null;
    notifyListeners();
  }
}
