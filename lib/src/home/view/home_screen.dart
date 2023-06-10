import 'package:chat_gpt/config/theme/controller/theme_provider.dart';
import 'package:chat_gpt/utils/widget/custom_textfiedl.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:get/utils.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:provider/provider.dart';

import '../../../constant/app_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat GPT"),
        actions: [
          IconButton(
            onPressed: () {
              themeProvider.toggleTheme();
            },
            icon: FaIcon(
              themeProvider.themeMode == ThemeMode.light
                  ? FontAwesomeIcons.solidSun
                  : FontAwesomeIcons.moon,
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.darkColor,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(20),
              width: context.width,
              child: Column(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: context.theme.highlightColor,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                    ),
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          // const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20).copyWith(top: 0),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  spreadRadius: -15,
                  color: AppColor.darkColor.withOpacity(0.2),
                ),
              ],
            ),
            child: CustomTextField(
              hintText: "Send a message",
              enabledColor: AppColor.darkColor,
              focusedColor: AppColor.darkColor,
              fillColor: context.theme.highlightColor,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Iconify(
                  Ph.paper_plane_right_fill,
                  color: context.iconColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
