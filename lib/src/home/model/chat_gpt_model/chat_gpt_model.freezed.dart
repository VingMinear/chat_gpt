// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_gpt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatGPTModel _$ChatGPTModelFromJson(Map<String, dynamic> json) {
  return _ChatGPTModel.fromJson(json);
}

/// @nodoc
mixin _$ChatGPTModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "object")
  String? get object => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  int? get created => throw _privateConstructorUsedError;
  @JsonKey(name: "owned_by")
  String? get ownedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "permission")
  List<PermissionModel>? get permission => throw _privateConstructorUsedError;
  @JsonKey(name: "root")
  String? get root => throw _privateConstructorUsedError;
  @JsonKey(name: "parent")
  String? get parent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatGPTModelCopyWith<ChatGPTModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatGPTModelCopyWith<$Res> {
  factory $ChatGPTModelCopyWith(
          ChatGPTModel value, $Res Function(ChatGPTModel) then) =
      _$ChatGPTModelCopyWithImpl<$Res, ChatGPTModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "object") String? object,
      @JsonKey(name: "created") int? created,
      @JsonKey(name: "owned_by") String? ownedBy,
      @JsonKey(name: "permission") List<PermissionModel>? permission,
      @JsonKey(name: "root") String? root,
      @JsonKey(name: "parent") String? parent});
}

/// @nodoc
class _$ChatGPTModelCopyWithImpl<$Res, $Val extends ChatGPTModel>
    implements $ChatGPTModelCopyWith<$Res> {
  _$ChatGPTModelCopyWithImpl(this._value, this._then);

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
    Object? ownedBy = freezed,
    Object? permission = freezed,
    Object? root = freezed,
    Object? parent = freezed,
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
      ownedBy: freezed == ownedBy
          ? _value.ownedBy
          : ownedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      permission: freezed == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as List<PermissionModel>?,
      root: freezed == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatGPTModelCopyWith<$Res>
    implements $ChatGPTModelCopyWith<$Res> {
  factory _$$_ChatGPTModelCopyWith(
          _$_ChatGPTModel value, $Res Function(_$_ChatGPTModel) then) =
      __$$_ChatGPTModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "object") String? object,
      @JsonKey(name: "created") int? created,
      @JsonKey(name: "owned_by") String? ownedBy,
      @JsonKey(name: "permission") List<PermissionModel>? permission,
      @JsonKey(name: "root") String? root,
      @JsonKey(name: "parent") String? parent});
}

/// @nodoc
class __$$_ChatGPTModelCopyWithImpl<$Res>
    extends _$ChatGPTModelCopyWithImpl<$Res, _$_ChatGPTModel>
    implements _$$_ChatGPTModelCopyWith<$Res> {
  __$$_ChatGPTModelCopyWithImpl(
      _$_ChatGPTModel _value, $Res Function(_$_ChatGPTModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? created = freezed,
    Object? ownedBy = freezed,
    Object? permission = freezed,
    Object? root = freezed,
    Object? parent = freezed,
  }) {
    return _then(_$_ChatGPTModel(
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
      ownedBy: freezed == ownedBy
          ? _value.ownedBy
          : ownedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      permission: freezed == permission
          ? _value._permission
          : permission // ignore: cast_nullable_to_non_nullable
              as List<PermissionModel>?,
      root: freezed == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatGPTModel implements _ChatGPTModel {
  _$_ChatGPTModel(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "object") this.object,
      @JsonKey(name: "created") this.created,
      @JsonKey(name: "owned_by") this.ownedBy,
      @JsonKey(name: "permission") final List<PermissionModel>? permission,
      @JsonKey(name: "root") this.root,
      @JsonKey(name: "parent") this.parent})
      : _permission = permission;

  factory _$_ChatGPTModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatGPTModelFromJson(json);

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
  @JsonKey(name: "owned_by")
  final String? ownedBy;
  final List<PermissionModel>? _permission;
  @override
  @JsonKey(name: "permission")
  List<PermissionModel>? get permission {
    final value = _permission;
    if (value == null) return null;
    if (_permission is EqualUnmodifiableListView) return _permission;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "root")
  final String? root;
  @override
  @JsonKey(name: "parent")
  final String? parent;

  @override
  String toString() {
    return 'ChatGPTModel(id: $id, object: $object, created: $created, ownedBy: $ownedBy, permission: $permission, root: $root, parent: $parent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatGPTModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.ownedBy, ownedBy) || other.ownedBy == ownedBy) &&
            const DeepCollectionEquality()
                .equals(other._permission, _permission) &&
            (identical(other.root, root) || other.root == root) &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, created, ownedBy,
      const DeepCollectionEquality().hash(_permission), root, parent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatGPTModelCopyWith<_$_ChatGPTModel> get copyWith =>
      __$$_ChatGPTModelCopyWithImpl<_$_ChatGPTModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatGPTModelToJson(
      this,
    );
  }
}

abstract class _ChatGPTModel implements ChatGPTModel {
  factory _ChatGPTModel(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "object") final String? object,
      @JsonKey(name: "created") final int? created,
      @JsonKey(name: "owned_by") final String? ownedBy,
      @JsonKey(name: "permission") final List<PermissionModel>? permission,
      @JsonKey(name: "root") final String? root,
      @JsonKey(name: "parent") final String? parent}) = _$_ChatGPTModel;

  factory _ChatGPTModel.fromJson(Map<String, dynamic> json) =
      _$_ChatGPTModel.fromJson;

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
  @JsonKey(name: "owned_by")
  String? get ownedBy;
  @override
  @JsonKey(name: "permission")
  List<PermissionModel>? get permission;
  @override
  @JsonKey(name: "root")
  String? get root;
  @override
  @JsonKey(name: "parent")
  String? get parent;
  @override
  @JsonKey(ignore: true)
  _$$_ChatGPTModelCopyWith<_$_ChatGPTModel> get copyWith =>
      throw _privateConstructorUsedError;
}
