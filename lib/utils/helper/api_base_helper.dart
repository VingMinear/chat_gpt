import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get_connect.dart';

class ErrorModel {
  final int? statusCode;
  final dynamic bodyString;
  const ErrorModel({this.statusCode, this.bodyString});
}

enum METHODE {
  get,
  post,
  delete,
  update,
}

class ApiBaseHelper extends GetConnect {
  final String _baseurl = "https://api.openai.com/v1/";
  final String _organization = "org-Cs1eK5ltL4mAjPP4nGJpmPl2";
  final String _token = "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";

  Future<dynamic> onNetworkRequesting({
    Map<String, String>? header,
    Map<String, dynamic>? body,
    required String url,
    required METHODE? methode,
    String tempToken = "",
    required bool isAuthorize,
  }) async {
    Map<String, String> defaultHeader = isAuthorize
        ? {
            "Accept": "application/json",
            'Content-Type': 'application/json',
            "OpenAI-Organization": _organization,
            'Authorization': 'Bearer $_token',
          }
        : {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          };
    try {
      //   required String model,
      // required String content,
      // _body = {
      //   "model": model,
      //   "messages": [
      //     {
      //       "role": "user",
      //       "content": content,
      //     }
      //   ]
      // };
      final fullUrl = _baseurl + url;
      switch (methode) {
        case METHODE.get:
          final response = await get(fullUrl, headers: header ?? defaultHeader);
          return _returnResponse(response);
        case METHODE.post:
          if (body != null) {
            final response =
                await post(fullUrl, json.encode(body), headers: defaultHeader);
            return _returnResponse(response);
          }
          return Future.error(
              const ErrorModel(bodyString: 'Body must be included'));

        case METHODE.delete:
          final response = await delete(_baseurl, headers: defaultHeader);
          return _returnResponse(response);
        case METHODE.update:
          if (body != null) {
            final response =
                await put(fullUrl, json.encode(body), headers: defaultHeader);
            return _returnResponse(response);
          }
          return Future.error(
              const ErrorModel(bodyString: 'Body must be included'));
        default:
          break;
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  dynamic _returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        debugPrint('200');
        var responseJson = json.decode(response.bodyString!);
        return responseJson;
      case 201:
        debugPrint('201');
        var responseJson = json.decode(response.bodyString!);
        return responseJson;
      case 202:
        debugPrint('202');
        var responseJson = json.decode(response.bodyString!);
        return responseJson;
      case 404:
        debugPrint('404');
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));
      case 400:
        debugPrint('400');
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));
      case 401:
        debugPrint('401');

        // UserSharedPreferences.removeToken();

        break;
      case 403:
        debugPrint('403');
        return Future.error(
          ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!),
          ),
        );
      case 500:
        debugPrint('500');
        // UserSharedPreferences.removeToken();

        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));
      default:
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));
    }
  }
}
