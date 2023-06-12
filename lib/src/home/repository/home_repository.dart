import 'package:chat_gpt/src/home/model/chat_gpt_model/chat_gpt_model.dart';
import 'package:chat_gpt/utils/helper/alerting.dart';
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
        // debugPrint(" > $response");
        // response['data'].map((element) {
        //   var data = ChatGPTModel.fromJson(element);
        //   listData.add(data);
        // }).toList();
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
        url: "completions",
        body: {
          "model": "gpt-3.5-turbo",
          "prompt": content,
        },
        methode: METHODE.post,
        isAuthorize: true,
      )
          .then((response) {
        data = ResponseModel.fromJson(response);
      }).onError((ErrorModel error, stackTrace) {
        debugPrint("response: ${error.bodyString}");
        var message = error.bodyString as Map<String, dynamic>;
        if (message["error"]["message"]
            .toString()
            .contains("Your API key is not allowed to be used")) {
          alertErrorSnackbar(
            title: "UnAuthorization",
            message: "Token has been expired",
          );
        } else if (message["error"]["message"]
            .toString()
            .contains("Invalid API key")) {
          alertErrorSnackbar(
            title: "UnAuthorization",
            message: "Token is Invalid",
          );
        }
      });
    } catch (error) {
      debugPrint(
        'CatchError when fetchModelsRepository this is error : >> $error',
      );
    }
    return data;
  }
}
