import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  var currentIndex = 0;
  void chnageScreen(int screen) {
    currentIndex = screen;
    notifyListeners();
  }
}
