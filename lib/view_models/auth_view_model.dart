import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../utils/enums.dart';
import '../widgets/bottom_sheets/image_selection_bottom_sheet.dart';

class AuthViewModel extends ChangeNotifier {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  String? _profileImagePath;


  final TextEditingController _interacNameController = TextEditingController();
  final TextEditingController _interacEmailController = TextEditingController();
  final TextEditingController _interacPhoneController = TextEditingController();

  String? get getProfileImagePath => _profileImagePath;

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
  TextEditingController get getNameController => _nameController;

  TextEditingController get getEmailController => _emailController;

  TextEditingController get getPhoneController => _phoneController;

  TextEditingController get getInteracNameController => _interacNameController;

  TextEditingController get getInteracEmailController => _interacEmailController;

  TextEditingController get getInteracPhoneController => _interacPhoneController;

  void setSignUpDetailsToInterac(){
    _interacNameController.text = _nameController.text;
    _interacEmailController.text = _emailController.text;
    _interacPhoneController.text = _phoneController.text;
  }





// UserType userType = UserType.customer;
  //
  //
  // void setUserType(UserType newUserType) {
  //   userType = newUserType;
  //   notifyListeners();
  // }



}
