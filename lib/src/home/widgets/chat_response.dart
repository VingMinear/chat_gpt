import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/app_color.dart';

class ChatResponse extends StatelessWidget {
  const ChatResponse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
