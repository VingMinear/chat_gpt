import 'package:freezed_annotation/freezed_annotation.dart';

part 'choices.freezed.dart';
part 'choices.g.dart';

@freezed
class ChoicesModel with _$ChoicesModel {
  factory ChoicesModel({
    @JsonKey(name: "text") final String? text,
    @JsonKey(name: "finish_reason") final String? finishReason,
    @JsonKey(name: "index") final int? index,
    @JsonKey(name: "logprobs") final String? logprobs,
  }) = _ChoicesModel;

  factory ChoicesModel.fromJson(Map<String, dynamic> json) =>
      _$ChoicesModelFromJson(json);
}
