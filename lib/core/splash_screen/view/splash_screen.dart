import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_gpt/constant/app_color.dart';
import 'package:chat_gpt/src/home/view/home_screen.dart';
import 'package:chat_gpt/utils/view/internet_no_connection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../../utils/helper/network_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 4200), () {
      Get.offAll(() {
        return const HomeScreen();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var networkProvider = Provider.of<NetworkStatus>(context);
    // SplashScreenProvider().fetchData(context);
    return networkProvider == NetworkStatus.offline
        ? const InternetNoConnectionScreen()
        : Scaffold(
            backgroundColor: AppColor.primaryLightColor,
            body: Padding(
              padding: const EdgeInsets.all(20).copyWith(
                top: context.width / 4,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(
                      "assets/lotties/brain.json",
                      onLoaded: (p0) {},
                    ),
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 30,
                        color: AppColor.darkColor,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          FlickerAnimatedText(
                            "Welcome",
                            speed: const Duration(milliseconds: 600),
                          ),
                          FlickerAnimatedText(
                            "to",
                            speed: const Duration(milliseconds: 200),
                          ),
                          FlickerAnimatedText(
                            "Chat GPT",
                            speed: const Duration(milliseconds: 600),
                          ),
                        ],
                        repeatForever: true,
                      ),
                    ),
                    const Spacer(),
                    const Text("Copyright© N E A"),
                  ],
                ),
              ),
            ),
          );
  }
}
