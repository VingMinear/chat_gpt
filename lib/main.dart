import 'package:chat_gpt/config/providers/providers.dart';
import 'package:chat_gpt/config/theme/theme.dart';
import 'package:chat_gpt/utils/controller/global_key.dart';
import 'package:chat_gpt/utils/helper/api_base_helper.dart';
import 'package:chat_gpt/utils/view/dismiss_keyboard.dart';
import 'package:chat_gpt/utils/helper/network_service.dart';
import 'package:chat_gpt/utils/helper/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';

import 'config/theme/controller/theme_provider.dart';
import 'core/splash_screen/view/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  // if i put here it not working
  // ThemeProvider().getTheme();
  var token = LocalStorage.getStringData(key: "token");

  if (token.isNotEmpty) {
    ApiBaseHelper().token = token;
    debugPrint("token > $token");
  }

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProviders().providers,
      child: Consumer<ThemeProvider>(
        builder: (context, provider, child) {
          return DismissKeyboard(
            child: GetMaterialApp(
              theme: AppTheme.lightTheme(),
              darkTheme: AppTheme.darkTheme(),
              initialBinding: NetworkBinding(),
              themeMode: provider.themeMode ?? ThemeMode.system,
              debugShowCheckedModeBanner: false,
              scaffoldMessengerKey: snackBarKey,
              home: const SplashScreen(),
            ),
          );
        },
      ),
    );
  }
}
