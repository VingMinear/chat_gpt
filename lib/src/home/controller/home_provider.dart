import 'package:chat_gpt/src/home/model/chat_user/chat_user.dart';
import 'package:chat_gpt/src/home/repository/home_repository.dart';
import 'package:chat_gpt/utils/helper/translator.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../utils/helper/local_storage.dart';
import '../model/chat_gpt_model/chat_gpt_model.dart';
import '../widgets/chat_response.dart';

class HomeProvider extends ChangeNotifier with HomeRepository {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  List<String> dropdownItems = [];
  var textController = TextEditingController();
  var clearIcon = false;
  List<ChatResponse> listChat = [];
  String selectedItem = "";
  List<ChatGPTModel> listData = [];
  bool loadingAsking = false;
  bool show = false;
  int? selectedLanIndex;
  void getLangLocalStorage() {
    var language = LocalStorage.getIntData(key: "language");
    selectedLanIndex = language;
  }

  void onChanged(String value) {
    if (value.isNotEmpty) {
      show = true;
    } else {
      show = false;
    }
  }

  void update() {
    notifyListeners();
  }

  void clearChat() {
    listChat.clear();
    // listChatUser.clear();
    // listChatBot.clear();
    notifyListeners();
  }

  void submit() {
    if (textController.text.trim().isNotEmpty) {
      clearIcon = false;
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
        (response) async {
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
            String textTranslate;
            if (selectedLanIndex == 0) {
              debugPrint("no translation");
              textTranslate = response.choices![0].message!.content!;
            } else {
              debugPrint("translate");
              textTranslate = await TranslatorService.translate(
                response.choices![0].message!.content!,
                Language.khmer,
              );
            }
            listChat.add(
              ChatResponse(
                text: textTranslate,
                responseAs: ResponseAs.bot,
              ),
            );
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

  updateLanguage(int index) {}

  changeLanguage(
    BuildContext context,
  ) async {
    var listText = [
      "English",
      "Khmer",
    ];
    var listFlags = [
      const Flag.fromString(
        "gb",
        width: 20,
        height: 20,
      ),
      const Flag.fromString(
        "kh",
        width: 20,
        height: 20,
      ),
    ];
    await showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) {
        var homeProvider = Provider.of<HomeProvider>(context);
        return Padding(
          padding: const EdgeInsets.all(15).copyWith(
            bottom: context.mediaQueryViewPadding.bottom,
          ),
          child: Wrap(
            children: List.generate(
              2,
              (index) {
                return ListTile(
                  leading: listFlags[index],
                  title: Text(listText[index]),
                  onTap: () async {
                    homeProvider.selectedLanIndex = index;
                    debugPrint("lang:${homeProvider.selectedLanIndex}");
                    notifyListeners();
                    Navigator.pop(context);
                    await LocalStorage.storeData(
                      key: "language",
                      value: homeProvider.selectedLanIndex,
                    );
                  },
                  trailing: Icon(
                    index == selectedLanIndex
                        ? Icons.circle_rounded
                        : Icons.circle_outlined,
                    size: 15,
                    color: Colors.green,
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
