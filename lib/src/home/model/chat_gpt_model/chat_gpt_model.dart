import 'package:chat_gpt/src/home/model/permission_model/permission_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_gpt_model.freezed.dart';
part 'chat_gpt_model.g.dart';

@freezed
class ChatGPTModel with _$ChatGPTModel {
  factory ChatGPTModel({
    @JsonKey(name: "id") final String? id,
    @JsonKey(name: "object") final String? object,
    @JsonKey(name: "created") final int? created,
    @JsonKey(name: "owned_by") final String? ownedBy,
    @JsonKey(name: "permission") final List<PermissionModel>? permission,
    @JsonKey(name: "root") final String? root,
    @JsonKey(name: "parent") final String? parent,
  }) = _ChatGPTModel;

  factory ChatGPTModel.fromJson(Map<String, dynamic> json) =>
      _$ChatGPTModelFromJson(json);
}
// flutter pub run build_runner build --delete-conflicting-outputs
