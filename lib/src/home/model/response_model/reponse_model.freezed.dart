// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reponse_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseModel _$ResponseModelFromJson(Map<String, dynamic> json) {
  return _ResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "object")
  String? get object => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  int? get created => throw _privateConstructorUsedError;
  @JsonKey(name: "model")
  String? get model => throw _privateConstructorUsedError;
  @JsonKey(name: "usage")
  UsageModel? get usage => throw _privateConstructorUsedError;
  @JsonKey(name: "choices")
  List<ChoicesModel>? get choices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseModelCopyWith<ResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<$Res> {
  factory $ResponseModelCopyWith(
          ResponseModel value, $Res Function(ResponseModel) then) =
      _$ResponseModelCopyWithImpl<$Res, ResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "object") String? object,
      @JsonKey(name: "created") int? created,
      @JsonKey(name: "model") String? model,
      @JsonKey(name: "usage") UsageModel? usage,
      @JsonKey(name: "choices") List<ChoicesModel>? choices});

  $UsageModelCopyWith<$Res>? get usage;
}

/// @nodoc
class _$ResponseModelCopyWithImpl<$Res, $Val extends ResponseModel>
    implements $ResponseModelCopyWith<$Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? created = freezed,
    Object? model = freezed,
    Object? usage = freezed,
    Object? choices = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageModel?,
      choices: freezed == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoicesModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UsageModelCopyWith<$Res>? get usage {
    if (_value.usage == null) {
      return null;
    }

    return $UsageModelCopyWith<$Res>(_value.usage!, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResponseModelCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory _$$_ResponseModelCopyWith(
          _$_ResponseModel value, $Res Function(_$_ResponseModel) then) =
      __$$_ResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "object") String? object,
      @JsonKey(name: "created") int? created,
      @JsonKey(name: "model") String? model,
      @JsonKey(name: "usage") UsageModel? usage,
      @JsonKey(name: "choices") List<ChoicesModel>? choices});

  @override
  $UsageModelCopyWith<$Res>? get usage;
}

/// @nodoc
class __$$_ResponseModelCopyWithImpl<$Res>
    extends _$ResponseModelCopyWithImpl<$Res, _$_ResponseModel>
    implements _$$_ResponseModelCopyWith<$Res> {
  __$$_ResponseModelCopyWithImpl(
      _$_ResponseModel _value, $Res Function(_$_ResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? created = freezed,
    Object? model = freezed,
    Object? usage = freezed,
    Object? choices = freezed,
  }) {
    return _then(_$_ResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageModel?,
      choices: freezed == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoicesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseModel implements _ResponseModel {
  _$_ResponseModel(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "object") this.object,
      @JsonKey(name: "created") this.created,
      @JsonKey(name: "model") this.model,
      @JsonKey(name: "usage") this.usage,
      @JsonKey(name: "choices") final List<ChoicesModel>? choices})
      : _choices = choices;

  factory _$_ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "object")
  final String? object;
  @override
  @JsonKey(name: "created")
  final int? created;
  @override
  @JsonKey(name: "model")
  final String? model;
  @override
  @JsonKey(name: "usage")
  final UsageModel? usage;
  final List<ChoicesModel>? _choices;
  @override
  @JsonKey(name: "choices")
  List<ChoicesModel>? get choices {
    final value = _choices;
    if (value == null) return null;
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseModel(id: $id, object: $object, created: $created, model: $model, usage: $usage, choices: $choices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, created, model,
      usage, const DeepCollectionEquality().hash(_choices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseModelCopyWith<_$_ResponseModel> get copyWith =>
      __$$_ResponseModelCopyWithImpl<_$_ResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseModelToJson(
      this,
    );
  }
}

abstract class _ResponseModel implements ResponseModel {
  factory _ResponseModel(
          {@JsonKey(name: "id") final String? id,
          @JsonKey(name: "object") final String? object,
          @JsonKey(name: "created") final int? created,
          @JsonKey(name: "model") final String? model,
          @JsonKey(name: "usage") final UsageModel? usage,
          @JsonKey(name: "choices") final List<ChoicesModel>? choices}) =
      _$_ResponseModel;

  factory _ResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ResponseModel.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "object")
  String? get object;
  @override
  @JsonKey(name: "created")
  int? get created;
  @override
  @JsonKey(name: "model")
  String? get model;
  @override
  @JsonKey(name: "usage")
  UsageModel? get usage;
  @override
  @JsonKey(name: "choices")
  List<ChoicesModel>? get choices;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseModelCopyWith<_$_ResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
