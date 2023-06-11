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
  @JsonKey(name: "message")
  MessageModel? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "finish_reason")
  String? get finishReason => throw _privateConstructorUsedError;
  @JsonKey(name: "index")
  int? get index => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "message") MessageModel? message,
      @JsonKey(name: "finish_reason") String? finishReason,
      @JsonKey(name: "index") int? index});

  $MessageModelCopyWith<$Res>? get message;
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
    Object? message = freezed,
    Object? finishReason = freezed,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageModelCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessageModelCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
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
      {@JsonKey(name: "message") MessageModel? message,
      @JsonKey(name: "finish_reason") String? finishReason,
      @JsonKey(name: "index") int? index});

  @override
  $MessageModelCopyWith<$Res>? get message;
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
    Object? message = freezed,
    Object? finishReason = freezed,
    Object? index = freezed,
  }) {
    return _then(_$_ChoicesModel(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChoicesModel implements _ChoicesModel {
  _$_ChoicesModel(
      {@JsonKey(name: "message") this.message,
      @JsonKey(name: "finish_reason") this.finishReason,
      @JsonKey(name: "index") this.index});

  factory _$_ChoicesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChoicesModelFromJson(json);

  @override
  @JsonKey(name: "message")
  final MessageModel? message;
  @override
  @JsonKey(name: "finish_reason")
  final String? finishReason;
  @override
  @JsonKey(name: "index")
  final int? index;

  @override
  String toString() {
    return 'ChoicesModel(message: $message, finishReason: $finishReason, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoicesModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, finishReason, index);

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
      {@JsonKey(name: "message") final MessageModel? message,
      @JsonKey(name: "finish_reason") final String? finishReason,
      @JsonKey(name: "index") final int? index}) = _$_ChoicesModel;

  factory _ChoicesModel.fromJson(Map<String, dynamic> json) =
      _$_ChoicesModel.fromJson;

  @override
  @JsonKey(name: "message")
  MessageModel? get message;
  @override
  @JsonKey(name: "finish_reason")
  String? get finishReason;
  @override
  @JsonKey(name: "index")
  int? get index;
  @override
  @JsonKey(ignore: true)
  _$$_ChoicesModelCopyWith<_$_ChoicesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
