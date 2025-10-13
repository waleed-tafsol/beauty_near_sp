import 'package:flutter/foundation.dart';

import '../utils/enums.dart';

class AuthViewModel extends ChangeNotifier {
  UserType userType = UserType.customer;

  void setUserType(UserType newUserType) {
    userType = newUserType;
    notifyListeners();
  }
}
