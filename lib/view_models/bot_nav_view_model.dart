import 'package:beauty_points/screens/my_wallet_screen.dart';
import 'package:flutter/cupertino.dart';

import '../screens/home_screen.dart';

class BotNavViewModel extends ChangeNotifier {
  int _currentPage = 0;

  final List<Widget> _children = [
    const HomeScreen(),
    Placeholder(),
    MyWalletScreen(),
    Placeholder(),
  ];

  int get currentPage => _currentPage;
  set currentPage(int value) {
    _currentPage = value;
    notifyListeners();
  }

  Widget get currentChild => _children[currentPage];
}
