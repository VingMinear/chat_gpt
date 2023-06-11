import 'package:chat_gpt/src/home/model/chat_user/chat_user.dart';
import 'package:chat_gpt/src/home/model/response_model/reponse_model.dart';
import 'package:chat_gpt/src/home/repository/home_repository.dart';
import 'package:flutter/material.dart';

import '../model/chat_gpt_model/chat_gpt_model.dart';

class HomeProvider extends ChangeNotifier with HomeRepository {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> dropdownItems = [];
  List<ChatUserModel> listChatUser = [];
  List<ResponseModel> listChatBot = [];
  String selectedItem = "";
  List<ChatGPTModel> listData = [];
  bool loadingAsking = false;
  void clearChat() {
    listChatUser.clear();
    listChatBot.clear();
    notifyListeners();
  }

  Future<void> askChatBot({
    required ChatUserModel chatUser,
  }) async {
    loadingAsking = true;
    notifyListeners();
    try {
      listChatUser.add(chatUser);
      await askingChatBot(chatUser.text).then(
        (response) {
          debugPrint("resonse : $response");
          listChatBot.add(response);
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
        respone.map((element) {
          debugPrint("elememnt ${element.id}");
          listData.add(element);
          dropdownItems.add(element.id!);
        }).toList();
        selectedItem = dropdownItems[0];
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
