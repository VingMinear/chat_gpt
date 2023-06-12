import 'package:flutter/cupertino.dart';
import 'package:translator/translator.dart';

enum Language {
  english,
  khmer,
}

class TranslatorService {
  final _translator = GoogleTranslator();
  Future<String> translate(
    String input, {
    required Language lanFrom,
    required Language lanTo,
  }) async {
    String result = "";
    try {
      await _translator
          .translate(
        input,
        from: lanFrom == Language.english ? 'en' : 'km',
        to: lanTo == Language.khmer ? 'km' : 'en',
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
