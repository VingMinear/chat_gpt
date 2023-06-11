// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChoicesModel _$$_ChoicesModelFromJson(Map<String, dynamic> json) =>
    _$_ChoicesModel(
      message: json['message'] == null
          ? null
          : MessageModel.fromJson(json['message'] as Map<String, dynamic>),
      finishReason: json['finish_reason'] as String?,
      index: json['index'] as int?,
    );

Map<String, dynamic> _$$_ChoicesModelToJson(_$_ChoicesModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'finish_reason': instance.finishReason,
      'index': instance.index,
    };
