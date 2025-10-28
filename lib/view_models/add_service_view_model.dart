import 'package:flutter/material.dart';

class AddServiceViewModel extends ChangeNotifier {
  List<String> _selectedEthnicity = [];
  List<String> _selectedGenders = [];
  final TextEditingController durationController = TextEditingController();
  final TextEditingController serviceNameController = TextEditingController();
  final TextEditingController servicePriceController = TextEditingController();

  List<String> get selectedEthnicity => _selectedEthnicity;
  List<String> get selectedGenders => _selectedGenders;

  void updateSelectedGenders(List<String> genders) {
    _selectedGenders = genders;
    notifyListeners();
  }

  void updateSelectedEthnicity(List<String> ethnicity) {
    _selectedEthnicity = ethnicity;
    notifyListeners();
  }

  void updateDuration(String duration) {
    durationController.text = duration;
    notifyListeners();
  }

  void clearAll() {
    _selectedEthnicity.clear();
    _selectedGenders.clear();
    durationController.clear();
    serviceNameController.clear();
    servicePriceController.clear();
    notifyListeners();
  }

  @override
  void dispose() {
    durationController.dispose();
    serviceNameController.dispose();
    servicePriceController.dispose();
    super.dispose();
  }
}
