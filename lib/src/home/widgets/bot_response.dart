import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/app_textstyle.dart';
import '../../../utils/widget/custom_avartar.dart';

class BotResponse extends StatelessWidget {
  const BotResponse({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAvatar(
          size: 40,
          imgPath: "assets/logo/chatGPT.png",
        ),
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(left: 10, bottom: 10),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: context.theme.highlightColor,
              borderRadius: BorderRadius.circular(15).copyWith(
                  // bottomLeft: Radius.zero,
                  ),
            ),
            child: DefaultTextStyle(
              style: AppTextStyle.txt15,
              child: Text(
                text,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
