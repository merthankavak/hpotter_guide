// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wand_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WandModel _$WandModelFromJson(Map<String, dynamic> json) {
  return _WandModel.fromJson(json);
}

/// @nodoc
mixin _$WandModel {
  @HiveField(0)
  String? get wood => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get core => throw _privateConstructorUsedError;
  @HiveField(2)
  num? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WandModelCopyWith<WandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WandModelCopyWith<$Res> {
  factory $WandModelCopyWith(WandModel value, $Res Function(WandModel) then) =
      _$WandModelCopyWithImpl<$Res, WandModel>;
  @useResult
  $Res call(
      {@HiveField(0) String? wood,
      @HiveField(1) String? core,
      @HiveField(2) num? length});
}

/// @nodoc
class _$WandModelCopyWithImpl<$Res, $Val extends WandModel>
    implements $WandModelCopyWith<$Res> {
  _$WandModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wood = freezed,
    Object? core = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      wood: freezed == wood
          ? _value.wood
          : wood // ignore: cast_nullable_to_non_nullable
              as String?,
      core: freezed == core
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WandModelCopyWith<$Res> implements $WandModelCopyWith<$Res> {
  factory _$$_WandModelCopyWith(
          _$_WandModel value, $Res Function(_$_WandModel) then) =
      __$$_WandModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? wood,
      @HiveField(1) String? core,
      @HiveField(2) num? length});
}

/// @nodoc
class __$$_WandModelCopyWithImpl<$Res>
    extends _$WandModelCopyWithImpl<$Res, _$_WandModel>
    implements _$$_WandModelCopyWith<$Res> {
  __$$_WandModelCopyWithImpl(
      _$_WandModel _value, $Res Function(_$_WandModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wood = freezed,
    Object? core = freezed,
    Object? length = freezed,
  }) {
    return _then(_$_WandModel(
      wood: freezed == wood
          ? _value.wood
          : wood // ignore: cast_nullable_to_non_nullable
              as String?,
      core: freezed == core
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WandModel extends _WandModel {
  const _$_WandModel(
      {@HiveField(0) this.wood,
      @HiveField(1) this.core,
      @HiveField(2) this.length})
      : super._();

  factory _$_WandModel.fromJson(Map<String, dynamic> json) =>
      _$$_WandModelFromJson(json);

  @override
  @HiveField(0)
  final String? wood;
  @override
  @HiveField(1)
  final String? core;
  @override
  @HiveField(2)
  final num? length;

  @override
  String toString() {
    return 'WandModel(wood: $wood, core: $core, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WandModel &&
            (identical(other.wood, wood) || other.wood == wood) &&
            (identical(other.core, core) || other.core == core) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, wood, core, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WandModelCopyWith<_$_WandModel> get copyWith =>
      __$$_WandModelCopyWithImpl<_$_WandModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WandModelToJson(
      this,
    );
  }
}

abstract class _WandModel extends WandModel {
  const factory _WandModel(
      {@HiveField(0) final String? wood,
      @HiveField(1) final String? core,
      @HiveField(2) final num? length}) = _$_WandModel;
  const _WandModel._() : super._();

  factory _WandModel.fromJson(Map<String, dynamic> json) =
      _$_WandModel.fromJson;

  @override
  @HiveField(0)
  String? get wood;
  @override
  @HiveField(1)
  String? get core;
  @override
  @HiveField(2)
  num? get length;
  @override
  @JsonKey(ignore: true)
  _$$_WandModelCopyWith<_$_WandModel> get copyWith =>
      throw _privateConstructorUsedError;
}
