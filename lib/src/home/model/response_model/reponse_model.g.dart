// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reponse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseModel _$$_ResponseModelFromJson(Map<String, dynamic> json) =>
    _$_ResponseModel(
      id: json['id'] as String?,
      object: json['object'] as String?,
      created: json['created'] as int?,
      model: json['model'] as String?,
      usage: json['usage'] == null
          ? null
          : UsageModel.fromJson(json['usage'] as Map<String, dynamic>),
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => ChoicesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseModelToJson(_$_ResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'usage': instance.usage,
      'choices': instance.choices,
    };
