// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spells.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Spells {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpellsCopyWith<Spells> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpellsCopyWith<$Res> {
  factory $SpellsCopyWith(Spells value, $Res Function(Spells) then) =
      _$SpellsCopyWithImpl<$Res, Spells>;
  @useResult
  $Res call({String? id, String? name, String? description});
}

/// @nodoc
class _$SpellsCopyWithImpl<$Res, $Val extends Spells>
    implements $SpellsCopyWith<$Res> {
  _$SpellsCopyWithImpl(this._value, this._then);

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
abstract class _$$_SpellsCopyWith<$Res> implements $SpellsCopyWith<$Res> {
  factory _$$_SpellsCopyWith(_$_Spells value, $Res Function(_$_Spells) then) =
      __$$_SpellsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? description});
}

/// @nodoc
class __$$_SpellsCopyWithImpl<$Res>
    extends _$SpellsCopyWithImpl<$Res, _$_Spells>
    implements _$$_SpellsCopyWith<$Res> {
  __$$_SpellsCopyWithImpl(_$_Spells _value, $Res Function(_$_Spells) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Spells(
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

class _$_Spells implements _Spells {
  const _$_Spells({this.id, this.name, this.description});

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString() {
    return 'Spells(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Spells &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpellsCopyWith<_$_Spells> get copyWith =>
      __$$_SpellsCopyWithImpl<_$_Spells>(this, _$identity);
}

abstract class _Spells implements Spells {
  const factory _Spells(
      {final String? id,
      final String? name,
      final String? description}) = _$_Spells;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_SpellsCopyWith<_$_Spells> get copyWith =>
      throw _privateConstructorUsedError;
}
