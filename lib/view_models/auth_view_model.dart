import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../utils/enums.dart';
import '../widgets/bottom_sheets/image_selection_bottom_sheet.dart';

class AuthViewModel extends ChangeNotifier {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  String _selectedPaymentType = '';
  String? _profileImagePath;

  bool _intracWithEmail = true;
  bool _isInteracEditable = false;

  bool _isVoidChequeEditable = false;



  final TextEditingController _interacEmailPhoneController = TextEditingController();
  final TextEditingController _interacNameController = TextEditingController();

  String? get getProfileImagePath => _profileImagePath;

  TextEditingController get getNameController => _nameController;

  TextEditingController get getEmailController => _emailController;

  TextEditingController get getPhoneController => _phoneController;


  TextEditingController get getInteracEmailPhoneController => _interacEmailPhoneController;

  TextEditingController get getInteracNameController => _interacNameController;


  bool get getIntracWithEmail => _intracWithEmail;

  bool get getIsInteracEditable => _isInteracEditable;

  bool get getIsVoidChequeEditable => _isVoidChequeEditable;


  String get getSelectedPaymentType => _selectedPaymentType;
  
 List<int> _selectedServices = [];
  
  List<int> get selectedServices => _selectedServices;
  
  void toggleService(int id) {
    if (_selectedServices.contains(id)) {
      _selectedServices.remove(id);
    } else {
      _selectedServices.add(id);
    }
    notifyListeners();
  }
  
  bool isServiceSelected(int id) {
    return _selectedServices.contains(id);
  }
  
  void clearSelection() {
    _selectedServices.clear();
    notifyListeners();
  }



  void setSelectedPaymentType ({required String value}){
    if (_selectedPaymentType == value) {
      _selectedPaymentType = '';
    }
    else{
      _selectedPaymentType = value;
    }
    notifyListeners();
  }

  void setIsVoidChequeEditable (){
    _isVoidChequeEditable = !_isVoidChequeEditable;
    if(_isVoidChequeEditable){
      _isInteracEditable = false;
    }
    notifyListeners();
  }
  void setIsInteracEditable (){
    _isInteracEditable = !_isInteracEditable;
    if(_isInteracEditable){
      _isVoidChequeEditable = false;
    }
    notifyListeners();
  }

  void setIntracWithEmail (){
    _intracWithEmail = !_intracWithEmail;
    notifyListeners();
  }


  Future<void> setProfileImagePath({required BuildContext context}) async {
    final String? imagePath = await ImageSelectionBottomSheet.show(
      context: context,
      title: 'Select Profile Image',
    );

    if (imagePath != null) {
      _profileImagePath = imagePath;
    }
    notifyListeners();

  }




// UserType userType = UserType.customer;
  //
  //
  // void setUserType(UserType newUserType) {
  //   userType = newUserType;
  //   notifyListeners();
  // }



}
