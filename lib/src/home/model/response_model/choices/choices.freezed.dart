// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choices.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChoicesModel _$ChoicesModelFromJson(Map<String, dynamic> json) {
  return _ChoicesModel.fromJson(json);
}

/// @nodoc
mixin _$ChoicesModel {
  @JsonKey(name: "text")
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: "finish_reason")
  String? get finishReason => throw _privateConstructorUsedError;
  @JsonKey(name: "index")
  int? get index => throw _privateConstructorUsedError;
  @JsonKey(name: "logprobs")
  String? get logprobs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoicesModelCopyWith<ChoicesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoicesModelCopyWith<$Res> {
  factory $ChoicesModelCopyWith(
          ChoicesModel value, $Res Function(ChoicesModel) then) =
      _$ChoicesModelCopyWithImpl<$Res, ChoicesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "text") String? text,
      @JsonKey(name: "finish_reason") String? finishReason,
      @JsonKey(name: "index") int? index,
      @JsonKey(name: "logprobs") String? logprobs});
}

/// @nodoc
class _$ChoicesModelCopyWithImpl<$Res, $Val extends ChoicesModel>
    implements $ChoicesModelCopyWith<$Res> {
  _$ChoicesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? finishReason = freezed,
    Object? index = freezed,
    Object? logprobs = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      logprobs: freezed == logprobs
          ? _value.logprobs
          : logprobs // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChoicesModelCopyWith<$Res>
    implements $ChoicesModelCopyWith<$Res> {
  factory _$$_ChoicesModelCopyWith(
          _$_ChoicesModel value, $Res Function(_$_ChoicesModel) then) =
      __$$_ChoicesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "text") String? text,
      @JsonKey(name: "finish_reason") String? finishReason,
      @JsonKey(name: "index") int? index,
      @JsonKey(name: "logprobs") String? logprobs});
}

/// @nodoc
class __$$_ChoicesModelCopyWithImpl<$Res>
    extends _$ChoicesModelCopyWithImpl<$Res, _$_ChoicesModel>
    implements _$$_ChoicesModelCopyWith<$Res> {
  __$$_ChoicesModelCopyWithImpl(
      _$_ChoicesModel _value, $Res Function(_$_ChoicesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? finishReason = freezed,
    Object? index = freezed,
    Object? logprobs = freezed,
  }) {
    return _then(_$_ChoicesModel(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      logprobs: freezed == logprobs
          ? _value.logprobs
          : logprobs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChoicesModel implements _ChoicesModel {
  _$_ChoicesModel(
      {@JsonKey(name: "text") this.text,
      @JsonKey(name: "finish_reason") this.finishReason,
      @JsonKey(name: "index") this.index,
      @JsonKey(name: "logprobs") this.logprobs});

  factory _$_ChoicesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChoicesModelFromJson(json);

  @override
  @JsonKey(name: "text")
  final String? text;
  @override
  @JsonKey(name: "finish_reason")
  final String? finishReason;
  @override
  @JsonKey(name: "index")
  final int? index;
  @override
  @JsonKey(name: "logprobs")
  final String? logprobs;

  @override
  String toString() {
    return 'ChoicesModel(text: $text, finishReason: $finishReason, index: $index, logprobs: $logprobs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoicesModel &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.logprobs, logprobs) ||
                other.logprobs == logprobs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, text, finishReason, index, logprobs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoicesModelCopyWith<_$_ChoicesModel> get copyWith =>
      __$$_ChoicesModelCopyWithImpl<_$_ChoicesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoicesModelToJson(
      this,
    );
  }
}

abstract class _ChoicesModel implements ChoicesModel {
  factory _ChoicesModel(
      {@JsonKey(name: "text") final String? text,
      @JsonKey(name: "finish_reason") final String? finishReason,
      @JsonKey(name: "index") final int? index,
      @JsonKey(name: "logprobs") final String? logprobs}) = _$_ChoicesModel;

  factory _ChoicesModel.fromJson(Map<String, dynamic> json) =
      _$_ChoicesModel.fromJson;

  @override
  @JsonKey(name: "text")
  String? get text;
  @override
  @JsonKey(name: "finish_reason")
  String? get finishReason;
  @override
  @JsonKey(name: "index")
  int? get index;
  @override
  @JsonKey(name: "logprobs")
  String? get logprobs;
  @override
  @JsonKey(ignore: true)
  _$$_ChoicesModelCopyWith<_$_ChoicesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
