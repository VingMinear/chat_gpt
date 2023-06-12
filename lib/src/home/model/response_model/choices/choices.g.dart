// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChoicesModel _$$_ChoicesModelFromJson(Map<String, dynamic> json) =>
    _$_ChoicesModel(
      text: json['text'] as String?,
      finishReason: json['finish_reason'] as String?,
      index: json['index'] as int?,
      logprobs: json['logprobs'] as String?,
    );

Map<String, dynamic> _$$_ChoicesModelToJson(_$_ChoicesModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'finish_reason': instance.finishReason,
      'index': instance.index,
      'logprobs': instance.logprobs,
    };
