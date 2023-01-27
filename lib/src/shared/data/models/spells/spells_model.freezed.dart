// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spells_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpellsModel _$SpellsModelFromJson(Map<String, dynamic> json) {
  return _SpellsModel.fromJson(json);
}

/// @nodoc
mixin _$SpellsModel {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpellsModelCopyWith<SpellsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpellsModelCopyWith<$Res> {
  factory $SpellsModelCopyWith(
          SpellsModel value, $Res Function(SpellsModel) then) =
      _$SpellsModelCopyWithImpl<$Res, SpellsModel>;
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? name,
      @HiveField(2) String? description});
}

/// @nodoc
class _$SpellsModelCopyWithImpl<$Res, $Val extends SpellsModel>
    implements $SpellsModelCopyWith<$Res> {
  _$SpellsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpellsModelCopyWith<$Res>
    implements $SpellsModelCopyWith<$Res> {
  factory _$$_SpellsModelCopyWith(
          _$_SpellsModel value, $Res Function(_$_SpellsModel) then) =
      __$$_SpellsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? name,
      @HiveField(2) String? description});
}

/// @nodoc
class __$$_SpellsModelCopyWithImpl<$Res>
    extends _$SpellsModelCopyWithImpl<$Res, _$_SpellsModel>
    implements _$$_SpellsModelCopyWith<$Res> {
  __$$_SpellsModelCopyWithImpl(
      _$_SpellsModel _value, $Res Function(_$_SpellsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_SpellsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpellsModel extends _SpellsModel {
  const _$_SpellsModel(
      {@HiveField(0) this.id,
      @HiveField(1) this.name,
      @HiveField(2) this.description})
      : super._();

  factory _$_SpellsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SpellsModelFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(2)
  final String? description;

  @override
  String toString() {
    return 'SpellsModel(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpellsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpellsModelCopyWith<_$_SpellsModel> get copyWith =>
      __$$_SpellsModelCopyWithImpl<_$_SpellsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpellsModelToJson(
      this,
    );
  }
}

abstract class _SpellsModel extends SpellsModel {
  const factory _SpellsModel(
      {@HiveField(0) final String? id,
      @HiveField(1) final String? name,
      @HiveField(2) final String? description}) = _$_SpellsModel;
  const _SpellsModel._() : super._();

  factory _SpellsModel.fromJson(Map<String, dynamic> json) =
      _$_SpellsModel.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_SpellsModelCopyWith<_$_SpellsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
