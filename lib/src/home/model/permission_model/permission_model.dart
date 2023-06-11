import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_model.freezed.dart';
part 'permission_model.g.dart';

@freezed
class PermissionModel with _$PermissionModel {
  factory PermissionModel({
    @JsonKey(name: "id") final String? id,
    @JsonKey(name: "object") final String? object,
    @JsonKey(name: "created") final int? created,
    @JsonKey(name: "allow_create_engine") final bool? allowCreateEngine,
    @JsonKey(name: "allow_sampling") final bool? allowSampling,
    @JsonKey(name: "allow_logprobs") final bool? allowLogprobs,
    @JsonKey(name: "allow_search_indices") final bool? allowSearchIndices,
    @JsonKey(name: "allow_view") final bool? allowView,
    @JsonKey(name: "allow_fine_tuning") final bool? allowFineTuning,
    @JsonKey(name: "organization") final String? organization,
    @JsonKey(name: "group") final String? group,
    @JsonKey(name: "is_blocking") final bool? isBlocking,
  }) = _PermissionModel;

  factory PermissionModel.fromJson(Map<String, dynamic> json) =>
      _$PermissionModelFromJson(json);
}
