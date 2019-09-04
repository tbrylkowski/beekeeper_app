import 'package:flutter/material.dart';

class BottomNavigationBarBee extends ChangeNotifier {
  int _currentIndex = 0;

  // ignore: unnecessary_getters_setters
  get currentIndex => _currentIndex;

  // ignore: unnecessary_getters_setters
  set currentIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }
}
