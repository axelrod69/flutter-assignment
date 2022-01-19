import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  late String _timeSelected = '';
  late bool _clicked = false;

  String get timeSelected {
    return _timeSelected;
  }

  bool get clicked {
    return _clicked;
  }

  void chooseTime(String text) {
    _timeSelected = text;
    notifyListeners();
  }

  void clickedBoolean(bool clickedButton) {
    _clicked = clickedButton;
    notifyListeners();
  }
}