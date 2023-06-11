// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PermissionModel _$PermissionModelFromJson(Map<String, dynamic> json) {
  return _PermissionModel.fromJson(json);
}

/// @nodoc
mixin _$PermissionModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "object")
  String? get object => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  int? get created => throw _privateConstructorUsedError;
  @JsonKey(name: "allow_create_engine")
  bool? get allowCreateEngine => throw _privateConstructorUsedError;
  @JsonKey(name: "allow_sampling")
  bool? get allowSampling => throw _privateConstructorUsedError;
  @JsonKey(name: "allow_logprobs")
  bool? get allowLogprobs => throw _privateConstructorUsedError;
  @JsonKey(name: "allow_search_indices")
  bool? get allowSearchIndices => throw _privateConstructorUsedError;
  @JsonKey(name: "allow_view")
  bool? get allowView => throw _privateConstructorUsedError;
  @JsonKey(name: "allow_fine_tuning")
  bool? get allowFineTuning => throw _privateConstructorUsedError;
  @JsonKey(name: "organization")
  String? get organization => throw _privateConstructorUsedError;
  @JsonKey(name: "group")
  String? get group => throw _privateConstructorUsedError;
  @JsonKey(name: "is_blocking")
  bool? get isBlocking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermissionModelCopyWith<PermissionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionModelCopyWith<$Res> {
  factory $PermissionModelCopyWith(
          PermissionModel value, $Res Function(PermissionModel) then) =
      _$PermissionModelCopyWithImpl<$Res, PermissionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "object") String? object,
      @JsonKey(name: "created") int? created,
      @JsonKey(name: "allow_create_engine") bool? allowCreateEngine,
      @JsonKey(name: "allow_sampling") bool? allowSampling,
      @JsonKey(name: "allow_logprobs") bool? allowLogprobs,
      @JsonKey(name: "allow_search_indices") bool? allowSearchIndices,
      @JsonKey(name: "allow_view") bool? allowView,
      @JsonKey(name: "allow_fine_tuning") bool? allowFineTuning,
      @JsonKey(name: "organization") String? organization,
      @JsonKey(name: "group") String? group,
      @JsonKey(name: "is_blocking") bool? isBlocking});
}

/// @nodoc
class _$PermissionModelCopyWithImpl<$Res, $Val extends PermissionModel>
    implements $PermissionModelCopyWith<$Res> {
  _$PermissionModelCopyWithImpl(this._value, this._then);

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
    Object? allowCreateEngine = freezed,
    Object? allowSampling = freezed,
    Object? allowLogprobs = freezed,
    Object? allowSearchIndices = freezed,
    Object? allowView = freezed,
    Object? allowFineTuning = freezed,
    Object? organization = freezed,
    Object? group = freezed,
    Object? isBlocking = freezed,
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
      allowCreateEngine: freezed == allowCreateEngine
          ? _value.allowCreateEngine
          : allowCreateEngine // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowSampling: freezed == allowSampling
          ? _value.allowSampling
          : allowSampling // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowLogprobs: freezed == allowLogprobs
          ? _value.allowLogprobs
          : allowLogprobs // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowSearchIndices: freezed == allowSearchIndices
          ? _value.allowSearchIndices
          : allowSearchIndices // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowView: freezed == allowView
          ? _value.allowView
          : allowView // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowFineTuning: freezed == allowFineTuning
          ? _value.allowFineTuning
          : allowFineTuning // ignore: cast_nullable_to_non_nullable
              as bool?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlocking: freezed == isBlocking
          ? _value.isBlocking
          : isBlocking // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PermissionModelCopyWith<$Res>
    implements $PermissionModelCopyWith<$Res> {
  factory _$$_PermissionModelCopyWith(
          _$_PermissionModel value, $Res Function(_$_PermissionModel) then) =
      __$$_PermissionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "object") String? object,
      @JsonKey(name: "created") int? created,
      @JsonKey(name: "allow_create_engine") bool? allowCreateEngine,
      @JsonKey(name: "allow_sampling") bool? allowSampling,
      @JsonKey(name: "allow_logprobs") bool? allowLogprobs,
      @JsonKey(name: "allow_search_indices") bool? allowSearchIndices,
      @JsonKey(name: "allow_view") bool? allowView,
      @JsonKey(name: "allow_fine_tuning") bool? allowFineTuning,
      @JsonKey(name: "organization") String? organization,
      @JsonKey(name: "group") String? group,
      @JsonKey(name: "is_blocking") bool? isBlocking});
}

/// @nodoc
class __$$_PermissionModelCopyWithImpl<$Res>
    extends _$PermissionModelCopyWithImpl<$Res, _$_PermissionModel>
    implements _$$_PermissionModelCopyWith<$Res> {
  __$$_PermissionModelCopyWithImpl(
      _$_PermissionModel _value, $Res Function(_$_PermissionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? created = freezed,
    Object? allowCreateEngine = freezed,
    Object? allowSampling = freezed,
    Object? allowLogprobs = freezed,
    Object? allowSearchIndices = freezed,
    Object? allowView = freezed,
    Object? allowFineTuning = freezed,
    Object? organization = freezed,
    Object? group = freezed,
    Object? isBlocking = freezed,
  }) {
    return _then(_$_PermissionModel(
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
      allowCreateEngine: freezed == allowCreateEngine
          ? _value.allowCreateEngine
          : allowCreateEngine // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowSampling: freezed == allowSampling
          ? _value.allowSampling
          : allowSampling // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowLogprobs: freezed == allowLogprobs
          ? _value.allowLogprobs
          : allowLogprobs // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowSearchIndices: freezed == allowSearchIndices
          ? _value.allowSearchIndices
          : allowSearchIndices // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowView: freezed == allowView
          ? _value.allowView
          : allowView // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowFineTuning: freezed == allowFineTuning
          ? _value.allowFineTuning
          : allowFineTuning // ignore: cast_nullable_to_non_nullable
              as bool?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlocking: freezed == isBlocking
          ? _value.isBlocking
          : isBlocking // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PermissionModel implements _PermissionModel {
  _$_PermissionModel(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "object") this.object,
      @JsonKey(name: "created") this.created,
      @JsonKey(name: "allow_create_engine") this.allowCreateEngine,
      @JsonKey(name: "allow_sampling") this.allowSampling,
      @JsonKey(name: "allow_logprobs") this.allowLogprobs,
      @JsonKey(name: "allow_search_indices") this.allowSearchIndices,
      @JsonKey(name: "allow_view") this.allowView,
      @JsonKey(name: "allow_fine_tuning") this.allowFineTuning,
      @JsonKey(name: "organization") this.organization,
      @JsonKey(name: "group") this.group,
      @JsonKey(name: "is_blocking") this.isBlocking});

  factory _$_PermissionModel.fromJson(Map<String, dynamic> json) =>
      _$$_PermissionModelFromJson(json);

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
  @JsonKey(name: "allow_create_engine")
  final bool? allowCreateEngine;
  @override
  @JsonKey(name: "allow_sampling")
  final bool? allowSampling;
  @override
  @JsonKey(name: "allow_logprobs")
  final bool? allowLogprobs;
  @override
  @JsonKey(name: "allow_search_indices")
  final bool? allowSearchIndices;
  @override
  @JsonKey(name: "allow_view")
  final bool? allowView;
  @override
  @JsonKey(name: "allow_fine_tuning")
  final bool? allowFineTuning;
  @override
  @JsonKey(name: "organization")
  final String? organization;
  @override
  @JsonKey(name: "group")
  final String? group;
  @override
  @JsonKey(name: "is_blocking")
  final bool? isBlocking;

  @override
  String toString() {
    return 'PermissionModel(id: $id, object: $object, created: $created, allowCreateEngine: $allowCreateEngine, allowSampling: $allowSampling, allowLogprobs: $allowLogprobs, allowSearchIndices: $allowSearchIndices, allowView: $allowView, allowFineTuning: $allowFineTuning, organization: $organization, group: $group, isBlocking: $isBlocking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PermissionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.allowCreateEngine, allowCreateEngine) ||
                other.allowCreateEngine == allowCreateEngine) &&
            (identical(other.allowSampling, allowSampling) ||
                other.allowSampling == allowSampling) &&
            (identical(other.allowLogprobs, allowLogprobs) ||
                other.allowLogprobs == allowLogprobs) &&
            (identical(other.allowSearchIndices, allowSearchIndices) ||
                other.allowSearchIndices == allowSearchIndices) &&
            (identical(other.allowView, allowView) ||
                other.allowView == allowView) &&
            (identical(other.allowFineTuning, allowFineTuning) ||
                other.allowFineTuning == allowFineTuning) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.isBlocking, isBlocking) ||
                other.isBlocking == isBlocking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      object,
      created,
      allowCreateEngine,
      allowSampling,
      allowLogprobs,
      allowSearchIndices,
      allowView,
      allowFineTuning,
      organization,
      group,
      isBlocking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PermissionModelCopyWith<_$_PermissionModel> get copyWith =>
      __$$_PermissionModelCopyWithImpl<_$_PermissionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PermissionModelToJson(
      this,
    );
  }
}

abstract class _PermissionModel implements PermissionModel {
  factory _PermissionModel(
          {@JsonKey(name: "id") final String? id,
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
          @JsonKey(name: "is_blocking") final bool? isBlocking}) =
      _$_PermissionModel;

  factory _PermissionModel.fromJson(Map<String, dynamic> json) =
      _$_PermissionModel.fromJson;

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
  @JsonKey(name: "allow_create_engine")
  bool? get allowCreateEngine;
  @override
  @JsonKey(name: "allow_sampling")
  bool? get allowSampling;
  @override
  @JsonKey(name: "allow_logprobs")
  bool? get allowLogprobs;
  @override
  @JsonKey(name: "allow_search_indices")
  bool? get allowSearchIndices;
  @override
  @JsonKey(name: "allow_view")
  bool? get allowView;
  @override
  @JsonKey(name: "allow_fine_tuning")
  bool? get allowFineTuning;
  @override
  @JsonKey(name: "organization")
  String? get organization;
  @override
  @JsonKey(name: "group")
  String? get group;
  @override
  @JsonKey(name: "is_blocking")
  bool? get isBlocking;
  @override
  @JsonKey(ignore: true)
  _$$_PermissionModelCopyWith<_$_PermissionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
