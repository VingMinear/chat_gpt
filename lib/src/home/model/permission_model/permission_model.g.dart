// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PermissionModel _$$_PermissionModelFromJson(Map<String, dynamic> json) =>
    _$_PermissionModel(
      id: json['id'] as String?,
      object: json['object'] as String?,
      created: json['created'] as int?,
      allowCreateEngine: json['allow_create_engine'] as bool?,
      allowSampling: json['allow_sampling'] as bool?,
      allowLogprobs: json['allow_logprobs'] as bool?,
      allowSearchIndices: json['allow_search_indices'] as bool?,
      allowView: json['allow_view'] as bool?,
      allowFineTuning: json['allow_fine_tuning'] as bool?,
      organization: json['organization'] as String?,
      group: json['group'] as String?,
      isBlocking: json['is_blocking'] as bool?,
    );

Map<String, dynamic> _$$_PermissionModelToJson(_$_PermissionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'allow_create_engine': instance.allowCreateEngine,
      'allow_sampling': instance.allowSampling,
      'allow_logprobs': instance.allowLogprobs,
      'allow_search_indices': instance.allowSearchIndices,
      'allow_view': instance.allowView,
      'allow_fine_tuning': instance.allowFineTuning,
      'organization': instance.organization,
      'group': instance.group,
      'is_blocking': instance.isBlocking,
    };
