import 'dart:async';

import 'package:chat_gpt/constant/app_textstyle.dart';
import 'package:chat_gpt/src/home/controller/home_provider.dart';
import 'package:chat_gpt/src/home/view/token_screen.dart';
import 'package:chat_gpt/utils/widget/custom_textfiedl.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';

import '../../../constant/app_color.dart';
import '../../../utils/widget/custom_app_bar.dart';
import '../widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);
    var scrollController = ScrollController();
    return Scaffold(
      key: homeProvider.scaffoldKey,
      drawerEdgeDragWidth: context.width * 0.7,
      drawer: const SideMenu(),
      appBar: primaryAppBar(
        text: "Chat GPT",
        leadingWidth: 60,
        leading: IconButton(
          onPressed: () {
            homeProvider.scaffoldKey.currentState!.openDrawer();
            FocusManager.instance.primaryFocus!.unfocus();
          },
          icon: const FaIcon(
            FontAwesomeIcons.barsStaggered,
            size: 23,
          ),
        ),
        spaceLeft: 5,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                () => const TokenScreen(),
                transition: Transition.rightToLeft,
              );
              Future.delayed(
                const Duration(milliseconds: 400),
                () {
                  FocusManager.instance.primaryFocus!.unfocus();
                },
              );
            },
            icon: const FaIcon(
              FontAwesomeIcons.key,
              size: 20,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          homeProvider.listChat.isEmpty
              ? const Expanded(
                  child: Center(
                    child: Text("Chat is empty"),
                  ),
                )
              : Expanded(
                  child: SingleChildScrollView(
                    controller: scrollController,
                    reverse: true,
                    physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        homeProvider.listChat.isEmpty
                            ? const Text("Ask Something")
                            : const SizedBox.shrink(),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: homeProvider.listChat.length,
                          itemBuilder: (context, index) {
                            var chat = homeProvider.listChat[index];
                            return chat;
                          },
                        ),
                        if (homeProvider.loadingAsking) ...{
                          LoadingAnimationWidget.staggeredDotsWave(
                            color: const Color(0xFF8283BD),
                            size: 25,
                          )
                        },
                      ],
                    ),
                  ),
                ),
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
              maxLines: null,
              controller: homeProvider.textController,
              hintText: "Send a message",
              onTap: () async {
                if (homeProvider.listChat.isNotEmpty) {
                  scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn,
                  );
                }
              },
              prefixIconColor: context.theme.canvasColor,
              prefixIcon: homeProvider.clearIcon
                  ? IconButton(
                      onPressed: () {
                        homeProvider.clearIcon = false;
                        homeProvider.textController.clear();
                        homeProvider.update();
                      },
                      icon: const Icon(
                        Icons.clear_rounded,
                      ),
                    )
                  : null,
              style: AppTextStyle.txt15,
              enabledColor: context.theme.canvasColor,
              focusedColor: context.theme.canvasColor,
              fillColor: context.theme.highlightColor,
              onFieldSubmitted: (value) {
                homeProvider.submit();
              },
              onChanged: (p0) {
                if (p0.trim().isNotEmpty) {
                  homeProvider.clearIcon = true;
                } else {
                  homeProvider.clearIcon = false;
                }
                homeProvider.update();
              },
              suffixIcon: IconButton(
                onPressed: () {
                  homeProvider.submit();
                },
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
