import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class MessageModel with _$MessageModel {
  factory MessageModel({
    @JsonKey(name: "role") final String? role,
    @JsonKey(name: "content") final String? content,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
