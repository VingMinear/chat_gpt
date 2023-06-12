import 'package:chat_gpt/src/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';

import '../../../src/home/controller/home_provider.dart';

class SplashScreenProvider extends ChangeNotifier {
  fetchData(BuildContext context) async {
    final homeProivder = Provider.of<HomeProvider>(context);
    await homeProivder.fetchModels();
    if (homeProivder.dropdownItems.isNotEmpty) {
      await Future.delayed(
        const Duration(milliseconds: 400),
        () {
          Get.offAll(() {
            return const HomeScreen();
          });
        },
      );
    }

    notifyListeners();
  }
}
