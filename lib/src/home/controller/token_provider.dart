import 'package:flutter/material.dart';

class TokenProvider extends ChangeNotifier {
  bool showBtn = false;
  var tokenController = TextEditingController();
  void changeBtn(bool display) {
    showBtn = display;
    notifyListeners();
  }
}
