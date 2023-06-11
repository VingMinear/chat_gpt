import 'package:chat_gpt/src/home/model/chat_gpt_model/chat_gpt_model.dart';
import 'package:flutter/cupertino.dart';

import '../../../utils/helper/api_base_helper.dart';
import '../model/response_model/reponse_model.dart';

class HomeRepository {
  final _apiBaseHelper = ApiBaseHelper();

  Future<List<ChatGPTModel>> fetchModelsRepository() async {
    List<ChatGPTModel> listData = [];
    try {
      listData.clear();
      await _apiBaseHelper
          .onNetworkRequesting(
        url: "models",
        methode: METHODE.get,
        isAuthorize: true,
      )
          .then((response) {
        response['data'].map((element) {
          var data = ChatGPTModel.fromJson(element);
          listData.add(data);
        }).toList();
      });
    } catch (error) {
      debugPrint(
        'CatchError when fetchModelsRepository this is error : >> $error',
      );
    }
    return listData;
  }

  Future<ResponseModel> askingChatBot(String content) async {
    ResponseModel data = ResponseModel();
    try {
      await _apiBaseHelper
          .onNetworkRequesting(
        url: "chat/completions",
        body: {
          "model": "gpt-3.5-turbo",
          "messages": [
            {
              "role": "user",
              "content": content,
            }
          ]
        },
        methode: METHODE.post,
        isAuthorize: true,
      )
          .then((response) {
        data = ResponseModel.fromJson(response);
      });
    } catch (error) {
      debugPrint(
        'CatchError when fetchModelsRepository this is error : >> $error',
      );
    }
    return data;
  }
}
