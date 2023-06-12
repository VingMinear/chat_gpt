import 'package:chat_gpt/src/home/model/chat_user/chat_user.dart';
import 'package:chat_gpt/src/home/repository/home_repository.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../model/chat_gpt_model/chat_gpt_model.dart';
import '../widgets/chat_response.dart';

class HomeProvider extends ChangeNotifier with HomeRepository {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> dropdownItems = [];
  var textController = TextEditingController();
  // List<ChatUserModel> listChatUser = [];
  List<ChatResponse> listChat = [];
  // List<ResponseModel> listChatBot = [];
  String selectedItem = "";
  List<ChatGPTModel> listData = [];
  bool loadingAsking = false;
  bool show = false;
  void onChanged(String value) {
    if (value.isNotEmpty) {
      show = true;
    } else {
      show = false;
    }
  }

  void clearChat() {
    listChat.clear();
    // listChatUser.clear();
    // listChatBot.clear();
    notifyListeners();
  }

  void submit() {
    if (textController.text.isNotEmpty) {
      var chatUser = ChatUserModel(
        text: textController.text.trim(),
        dateTime: DateTime.now(),
      );
      askChatBot(chatUser: chatUser);
      textController.clear();
    } else {
      Fluttertoast.showToast(msg: "Please Input Something");
    }
  }

  Future<void> askChatBot({
    required ChatUserModel chatUser,
  }) async {
    loadingAsking = true;
    notifyListeners();
    try {
      listChat.add(
        ChatResponse(
          text: chatUser.text,
          responseAs: ResponseAs.human,
        ),
      );
      await askingChatBot(chatUser.text).then(
        (response) {
          debugPrint("resonse : $response");
          // listChatBot.add(response);
          if (response.object == null) {
            listChat.add(
              const ChatResponse(
                text: "Something went wrong !",
                responseAs: ResponseAs.bot,
              ),
            );
          } else {
            if (response.choices![0].text!.substring(0, 2).contains("\n\n")) {
              listChat.add(
                ChatResponse(
                  text: response.choices![0].text!.substring(2),
                  responseAs: ResponseAs.bot,
                ),
              );
            } else {
              listChat.add(
                ChatResponse(
                  text: response.choices![0].text!,
                  responseAs: ResponseAs.bot,
                ),
              );
            }
          }
        },
      );
    } catch (error) {
      debugPrint(
        'CatchError when askChatBot this is error : >> $error',
      );
    }
    loadingAsking = false;
    notifyListeners();
  }

  Future<void> fetchModels() async {
    try {
      dropdownItems.clear();
      await fetchModelsRepository().then((respone) {
        if (respone.isNotEmpty) {
          respone.map((element) {
            debugPrint("elememnt ${element.id}");
            listData.add(element);
            dropdownItems.add(element.id!);
          }).toList();
          selectedItem = dropdownItems[0];
        }
      });
    } catch (error) {
      debugPrint(
        'CatchError when fetchModels this is error : >> $error',
      );
    }
  }

  selectedItems(String item) {
    selectedItem = item;
    notifyListeners();
  }
}
