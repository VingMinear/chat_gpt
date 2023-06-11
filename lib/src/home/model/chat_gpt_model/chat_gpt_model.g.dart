// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_gpt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatGPTModel _$$_ChatGPTModelFromJson(Map<String, dynamic> json) =>
    _$_ChatGPTModel(
      id: json['id'] as String?,
      object: json['object'] as String?,
      created: json['created'] as int?,
      ownedBy: json['owned_by'] as String?,
      permission: (json['permission'] as List<dynamic>?)
          ?.map((e) => PermissionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      root: json['root'] as String?,
      parent: json['parent'] as String?,
    );

Map<String, dynamic> _$$_ChatGPTModelToJson(_$_ChatGPTModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'owned_by': instance.ownedBy,
      'permission': instance.permission,
      'root': instance.root,
      'parent': instance.parent,
    };
