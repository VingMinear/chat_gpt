import 'package:chat_gpt/src/home/controller/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:translator/translator.dart';

enum Language {
  english,
  khmer,
}

class TranslatorService {
  static final _translator = GoogleTranslator();

  static Future<String> translate(String input) async {
    String result = "";
    try {
      await _translator
          .translate(
        input,
        from: 'auto',
        to: HomeProvider().selectedLanIndex == 0 ? 'en' : 'km',
      )
          .then(
        (response) {
          result = response.text;
        },
      );
    } catch (e) {
      debugPrint("translate error : $e");
    }
    return result;
  }
}
