import 'package:chat_gpt/constant/app_textstyle.dart';
import 'package:chat_gpt/utils/view/internet_no_connection.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../../utils/helper/network_service.dart';
import '../controller/splash_screen_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var splashScreenProvider = Provider.of<SplashScreenProvider>(context);
    var networkProvider = Provider.of<NetworkStatus>(context);
    SplashScreenProvider().fetchData(context);
    return networkProvider == NetworkStatus.offline
        ? const InternetNoConnectionScreen()
        : Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(
                      "assets/lotties/brain.json",
                      repeat: splashScreenProvider.repeat,
                    ),
                    const Text(
                      'Welcome to My ChatBot',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.txt24,
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
