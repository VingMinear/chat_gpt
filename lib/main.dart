import 'package:chat_gpt/config/providers/providers.dart';
import 'package:chat_gpt/config/theme/theme.dart';
import 'package:chat_gpt/src/home/view/home_screen.dart';
import 'package:chat_gpt/utils/helper/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/theme/controller/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  // if i put here it not working
  // ThemeProvider().getTheme();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // var themeMode = ThemeProvider();
    return MultiProvider(
      providers: AppProviders().providers,
      child: Consumer<ThemeProvider>(
        builder: (context, provider, child) {
          return MaterialApp(
            theme: AppTheme.lightTheme(),
            darkTheme: AppTheme.darkTheme(),
            themeMode: provider.themeMode,
            debugShowCheckedModeBanner: false,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
