import 'package:chat_gpt/src/home/controller/token_provider.dart';
import 'package:chat_gpt/utils/helper/alerting.dart';
import 'package:chat_gpt/utils/helper/api_base_helper.dart';
import 'package:chat_gpt/utils/view/web_view.dart';
import 'package:chat_gpt/utils/widget/custom_app_bar.dart';
import 'package:chat_gpt/utils/widget/custom_textfiedl.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../utils/controller/web_view_provider.dart';
import '../../../utils/widget/custom_button.dart';

class TokenScreen extends StatelessWidget {
  const TokenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var tokenProvider = Provider.of<TokenProvider>(context);
    var webProvider = Provider.of<WebViewProvider>(context);
    return Scaffold(
      appBar: primaryAppBar(
        text: "Token",
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                () => const WebViewScreen(),
              );
              webProvider.webLoading(true);
            },
            icon: const FaIcon(
              FontAwesomeIcons.earthAmericas,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              enabledColor: context.theme.canvasColor,
              hintText: "TOKEN",
              onChanged: (p0) {
                if (p0.isNotEmpty) {
                  tokenProvider.changeBtn(true);
                } else {
                  tokenProvider.changeBtn(false);
                }
              },
              style: TextStyle(color: context.theme.canvasColor),
              suffixIcon: tokenProvider.showBtn
                  ? IconButton(
                      onPressed: () {
                        tokenProvider.changeBtn(false);
                        tokenProvider.tokenController.clear();
                      },
                      icon: Icon(
                        Icons.clear,
                        color: context.theme.canvasColor,
                      ),
                    )
                  : null,
              controller: tokenProvider.tokenController,
            ),
            const SizedBox(height: 20),
            CustomButton(
              onPressed: () async {
                if (tokenProvider.tokenController.text.isNotEmpty) {
                  ApiBaseHelper().token =
                      tokenProvider.tokenController.text.trim();
                  FocusManager.instance.primaryFocus!.unfocus();
                  alertSuccessSnackbar(
                    title: "Successfully",
                    message: "Token has been added",
                  );
                  Get.to(() => const TokenScreen());
                  await Future.delayed(
                    const Duration(milliseconds: 400),
                    () {
                      Get.back();
                    },
                  );
                  tokenProvider.tokenController.clear();
                } else {
                  alertErrorSnackbar(
                    title: "Error",
                    message: "Please input Token!",
                  );
                }
              },
              text: "Add Token",
            ),
          ],
        ),
      ),
    );
  }
}
