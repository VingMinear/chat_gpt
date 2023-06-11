import 'package:chat_gpt/utils/helper/local_storage.dart';
import 'package:flutter/material.dart';

// enum ThemeModeType { light, dark }

class ThemeProvider extends ChangeNotifier {
  ThemeMode? _themeMode;
  ThemeMode? get themeMode => _themeMode;
  var switcher = true;
  void toggleTheme() async {
    debugPrint("swaping");
    if (_themeMode == ThemeMode.light) {
      switcher = false;
      _themeMode = ThemeMode.dark;
      notifyListeners();
      await LocalStorage.storeData(
        key: "themeMode",
        value: "dark",
      );
    } else {
      switcher = true;
      _themeMode = ThemeMode.light;
      notifyListeners();
      await LocalStorage.storeData(
        key: "themeMode",
        value: "light",
      );
    }
    notifyListeners();
    var themeMode = LocalStorage.getStringData(key: "themeMode");
    debugPrint(" Theme Store : $themeMode");
  }

  void getTheme() {
    var themeMode = LocalStorage.getStringData(key: "themeMode");
    if (themeMode == "dark") {
      _themeMode = ThemeMode.dark;
    } else if (themeMode == "light") {
      _themeMode = ThemeMode.light;
    } else {
      _themeMode = ThemeMode.light;
    }
    debugPrint(themeMode);
    debugPrint("My Thmeme : ${_themeMode?.name}");
    notifyListeners();
  }
}
