import 'package:freezed_annotation/freezed_annotation.dart';

import 'message/message.dart';

part 'choices.freezed.dart';
part 'choices.g.dart';

@freezed
class ChoicesModel with _$ChoicesModel {
  factory ChoicesModel({
    @JsonKey(name: "message") final MessageModel? message,
    @JsonKey(name: "finish_reason") final String? finishReason,
    @JsonKey(name: "index") final int? index,
  }) = _ChoicesModel;

  factory ChoicesModel.fromJson(Map<String, dynamic> json) =>
      _$ChoicesModelFromJson(json);
}
