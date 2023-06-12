import 'package:chat_gpt/constant/app_textstyle.dart';
import 'package:chat_gpt/src/home/widgets/toggle_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../utils/widget/custom_avartar.dart';
import '../controller/home_provider.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var divider = Divider(
      color: context.theme.canvasColor,
      height: 30,
    );
    final homeProvider = Provider.of<HomeProvider>(context);
    return Drawer(
      width: context.width * 0.7,
      backgroundColor: context.theme.primaryColor,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(20))),
      child: DefaultTextStyle(
        style: AppTextStyle.txt14.copyWith(
          color: context.theme.canvasColor,
        ),
        child: SafeArea(
          bottom: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomAvatar(
                          size: 80,
                          imgUrl:
                              "https://lh3.googleusercontent.com/a/AAcHTtcFBSTxsFGglWTNzd-aqEkkqq9qUoxS7GD19zR0bg=s576-c-no",
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Theme",
                            ),
                            SizedBox(height: 10),
                            ToggleSwitcher(),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              divider,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Name : N E A",
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Email : nea@example.com",
                    ),
                  ],
                ),
              ),
              divider,
              ListTile(
                onTap: () {
                  homeProvider.clearChat();
                  Navigator.pop(context);
                },
                leading: Icon(
                  CupertinoIcons.delete,
                  color: context.theme.canvasColor,
                  size: 25,
                ),
                title: Text(
                  "Clear Chat",
                  style: TextStyle(color: context.theme.canvasColor),
                ),
              ),
              const Spacer(),
              divider,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text("Verson : 0.1.1"),
                  Text("Copyright© N E A"),
                ],
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
