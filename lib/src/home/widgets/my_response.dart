import 'package:flutter/material.dart';

import '../../../constant/app_textstyle.dart';
import '../../../utils/widget/custom_avartar.dart';

class MyResponse extends StatelessWidget {
  const MyResponse({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(right: 10, bottom: 10),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.green.shade400,
              borderRadius: BorderRadius.circular(15).copyWith(
                  // topRight: Radius.zero,
                  ),
            ),
            child: DefaultTextStyle(
              style: AppTextStyle.txt15,
              child: Text(text),
            ),
          ),
        ),
        const CustomAvatar(
          size: 40,
          imgUrl:
              "https://lh3.googleusercontent.com/a/AAcHTtcFBSTxsFGglWTNzd-aqEkkqq9qUoxS7GD19zR0bg=s576-c-no",
        ),
      ],
    );
  }
}
