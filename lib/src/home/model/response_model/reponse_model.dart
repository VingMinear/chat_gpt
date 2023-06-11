import 'package:chat_gpt/src/home/model/response_model/choices/choices.dart';
import 'package:chat_gpt/src/home/model/response_model/usage/usage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reponse_model.freezed.dart';
part 'reponse_model.g.dart';

@freezed
class ResponseModel with _$ResponseModel {
  factory ResponseModel({
    @JsonKey(name: "id") final String? id,
    @JsonKey(name: "object") final String? object,
    @JsonKey(name: "created") final int? created,
    @JsonKey(name: "model") final String? model,
    @JsonKey(name: "usage") final UsageModel? usage,
    @JsonKey(name: "choices") final List<ChoicesModel>? choices,
  }) = _ResponseModel;

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);
}
