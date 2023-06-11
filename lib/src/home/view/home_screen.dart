import 'package:chat_gpt/constant/app_textstyle.dart';
import 'package:chat_gpt/src/home/controller/home_provider.dart';
import 'package:chat_gpt/src/home/model/chat_user/chat_user.dart';
import 'package:chat_gpt/src/home/model/response_model/reponse_model.dart';
import 'package:chat_gpt/src/home/widgets/bot_response.dart';
import 'package:chat_gpt/src/home/widgets/my_response.dart';
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
import '../widgets/selected.dart';
import '../widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);
    var textController = TextEditingController();
    return Scaffold(
      key: homeProvider.scaffoldKey,
      drawerEdgeDragWidth: context.width * 0.5,
      drawer: const SideMenu(),
      appBar: primaryAppBar(
        text: "Chat GPT",
        leadingWidth: 60,
        leading: IconButton(
          onPressed: () {
            homeProvider.scaffoldKey.currentState!.openDrawer();
          },
          icon: const FaIcon(
            FontAwesomeIcons.barsStaggered,
            size: 23,
          ),
        ),
        spaceLeft: 0,
        actions: [
          MaterialButton(
            onPressed: () {
              Get.to(() => const Selected());
            },
            textColor: Colors.white,
            child: const Text("Model"),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: homeProvider.listChatUser.length,
                    itemBuilder: (context, index) {
                      var user = homeProvider.listChatUser[index];
                      ResponseModel bot = ResponseModel();
                      if (!homeProvider.loadingAsking) {
                        bot = homeProvider.listChatBot[index];
                      }
                      return Column(
                        children: [
                          MyResponse(text: user.text),
                          if (!homeProvider.loadingAsking) ...{
                            BotResponse(
                              text: bot.choices?[0].message?.content ??
                                  "Somting went wrong!",
                            ),
                          }
                        ],
                      );
                    },
                  ),
                  // ListView.builder(
                  //   shrinkWrap: true,
                  //   itemCount: homeProvider.listChatBot.length,
                  //   itemBuilder: (context, index) {
                  //     var response = homeProvider.listChatBot[index];
                  //     return BotResponse(
                  //       text: response.choices![0].message!.content!,
                  //     );
                  //   },
                  // ),
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
              controller: textController,
              hintText: "Send a message",
              style: AppTextStyle.txt15,
              enabledColor: AppColor.darkColor,
              focusedColor: AppColor.darkColor,
              fillColor: context.theme.highlightColor,
              onFieldSubmitted: (value) {
                if (textController.text.isNotEmpty) {
                  var chatUser = ChatUserModel(
                    text: textController.text.trim(),
                    dateTime: DateTime.now(),
                  );
                  homeProvider.askChatBot(chatUser: chatUser);
                  textController.clear();
                }
              },
              suffixIcon: IconButton(
                onPressed: () {
                  if (textController.text.isNotEmpty) {
                    var chatUser = ChatUserModel(
                      text: textController.text.trim(),
                      dateTime: DateTime.now(),
                    );
                    homeProvider.askChatBot(chatUser: chatUser);
                    textController.clear();
                  }
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
