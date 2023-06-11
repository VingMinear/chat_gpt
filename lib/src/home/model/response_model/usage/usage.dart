import 'package:freezed_annotation/freezed_annotation.dart';

part 'usage.freezed.dart';
part 'usage.g.dart';

@freezed
class UsageModel with _$UsageModel {
  factory UsageModel({
    @JsonKey(name: "prompt_tokens") final int? promptTokens,
    @JsonKey(name: "completion_tokens") final int? completionTokens,
    @JsonKey(name: "total_tokens") final int? totalTokens,
  }) = _UsageModel;

  factory UsageModel.fromJson(Map<String, dynamic> json) =>
      _$UsageModelFromJson(json);
}
