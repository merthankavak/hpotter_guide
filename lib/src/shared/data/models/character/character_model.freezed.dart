// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) {
  return _CharacterModel.fromJson(json);
}

/// @nodoc
mixin _$CharacterModel {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get species => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get gender => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get house => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @HiveField(6)
  bool? get wizard => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get ancestry => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get eyeColour => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get hairColour => throw _privateConstructorUsedError;
  @JsonKey(name: 'wand')
  @HiveField(10)
  WandModel? get wandModel => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get patronus => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get actor => throw _privateConstructorUsedError;
  @HiveField(13)
  bool? get alive => throw _privateConstructorUsedError;
  @HiveField(14)
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterModelCopyWith<CharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterModelCopyWith<$Res> {
  factory $CharacterModelCopyWith(
          CharacterModel value, $Res Function(CharacterModel) then) =
      _$CharacterModelCopyWithImpl<$Res, CharacterModel>;
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? name,
      @HiveField(2) String? species,
      @HiveField(3) String? gender,
      @HiveField(4) String? house,
      @HiveField(5) String? dateOfBirth,
      @HiveField(6) bool? wizard,
      @HiveField(7) String? ancestry,
      @HiveField(8) String? eyeColour,
      @HiveField(9) String? hairColour,
      @JsonKey(name: 'wand') @HiveField(10) WandModel? wandModel,
      @HiveField(11) String? patronus,
      @HiveField(12) String? actor,
      @HiveField(13) bool? alive,
      @HiveField(14) String? image});

  $WandModelCopyWith<$Res>? get wandModel;
}

/// @nodoc
class _$CharacterModelCopyWithImpl<$Res, $Val extends CharacterModel>
    implements $CharacterModelCopyWith<$Res> {
  _$CharacterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? species = freezed,
    Object? gender = freezed,
    Object? house = freezed,
    Object? dateOfBirth = freezed,
    Object? wizard = freezed,
    Object? ancestry = freezed,
    Object? eyeColour = freezed,
    Object? hairColour = freezed,
    Object? wandModel = freezed,
    Object? patronus = freezed,
    Object? actor = freezed,
    Object? alive = freezed,
    Object? image = freezed,
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
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      house: freezed == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      wizard: freezed == wizard
          ? _value.wizard
          : wizard // ignore: cast_nullable_to_non_nullable
              as bool?,
      ancestry: freezed == ancestry
          ? _value.ancestry
          : ancestry // ignore: cast_nullable_to_non_nullable
              as String?,
      eyeColour: freezed == eyeColour
          ? _value.eyeColour
          : eyeColour // ignore: cast_nullable_to_non_nullable
              as String?,
      hairColour: freezed == hairColour
          ? _value.hairColour
          : hairColour // ignore: cast_nullable_to_non_nullable
              as String?,
      wandModel: freezed == wandModel
          ? _value.wandModel
          : wandModel // ignore: cast_nullable_to_non_nullable
              as WandModel?,
      patronus: freezed == patronus
          ? _value.patronus
          : patronus // ignore: cast_nullable_to_non_nullable
              as String?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String?,
      alive: freezed == alive
          ? _value.alive
          : alive // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WandModelCopyWith<$Res>? get wandModel {
    if (_value.wandModel == null) {
      return null;
    }

    return $WandModelCopyWith<$Res>(_value.wandModel!, (value) {
      return _then(_value.copyWith(wandModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CharacterModelCopyWith<$Res>
    implements $CharacterModelCopyWith<$Res> {
  factory _$$_CharacterModelCopyWith(
          _$_CharacterModel value, $Res Function(_$_CharacterModel) then) =
      __$$_CharacterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? name,
      @HiveField(2) String? species,
      @HiveField(3) String? gender,
      @HiveField(4) String? house,
      @HiveField(5) String? dateOfBirth,
      @HiveField(6) bool? wizard,
      @HiveField(7) String? ancestry,
      @HiveField(8) String? eyeColour,
      @HiveField(9) String? hairColour,
      @JsonKey(name: 'wand') @HiveField(10) WandModel? wandModel,
      @HiveField(11) String? patronus,
      @HiveField(12) String? actor,
      @HiveField(13) bool? alive,
      @HiveField(14) String? image});

  @override
  $WandModelCopyWith<$Res>? get wandModel;
}

/// @nodoc
class __$$_CharacterModelCopyWithImpl<$Res>
    extends _$CharacterModelCopyWithImpl<$Res, _$_CharacterModel>
    implements _$$_CharacterModelCopyWith<$Res> {
  __$$_CharacterModelCopyWithImpl(
      _$_CharacterModel _value, $Res Function(_$_CharacterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? species = freezed,
    Object? gender = freezed,
    Object? house = freezed,
    Object? dateOfBirth = freezed,
    Object? wizard = freezed,
    Object? ancestry = freezed,
    Object? eyeColour = freezed,
    Object? hairColour = freezed,
    Object? wandModel = freezed,
    Object? patronus = freezed,
    Object? actor = freezed,
    Object? alive = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_CharacterModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      house: freezed == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      wizard: freezed == wizard
          ? _value.wizard
          : wizard // ignore: cast_nullable_to_non_nullable
              as bool?,
      ancestry: freezed == ancestry
          ? _value.ancestry
          : ancestry // ignore: cast_nullable_to_non_nullable
              as String?,
      eyeColour: freezed == eyeColour
          ? _value.eyeColour
          : eyeColour // ignore: cast_nullable_to_non_nullable
              as String?,
      hairColour: freezed == hairColour
          ? _value.hairColour
          : hairColour // ignore: cast_nullable_to_non_nullable
              as String?,
      wandModel: freezed == wandModel
          ? _value.wandModel
          : wandModel // ignore: cast_nullable_to_non_nullable
              as WandModel?,
      patronus: freezed == patronus
          ? _value.patronus
          : patronus // ignore: cast_nullable_to_non_nullable
              as String?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String?,
      alive: freezed == alive
          ? _value.alive
          : alive // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterModel extends _CharacterModel {
  const _$_CharacterModel(
      {@HiveField(0) this.id,
      @HiveField(1) this.name,
      @HiveField(2) this.species,
      @HiveField(3) this.gender,
      @HiveField(4) this.house,
      @HiveField(5) this.dateOfBirth,
      @HiveField(6) this.wizard,
      @HiveField(7) this.ancestry,
      @HiveField(8) this.eyeColour,
      @HiveField(9) this.hairColour,
      @JsonKey(name: 'wand') @HiveField(10) this.wandModel,
      @HiveField(11) this.patronus,
      @HiveField(12) this.actor,
      @HiveField(13) this.alive,
      @HiveField(14) this.image})
      : super._();

  factory _$_CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterModelFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(2)
  final String? species;
  @override
  @HiveField(3)
  final String? gender;
  @override
  @HiveField(4)
  final String? house;
  @override
  @HiveField(5)
  final String? dateOfBirth;
  @override
  @HiveField(6)
  final bool? wizard;
  @override
  @HiveField(7)
  final String? ancestry;
  @override
  @HiveField(8)
  final String? eyeColour;
  @override
  @HiveField(9)
  final String? hairColour;
  @override
  @JsonKey(name: 'wand')
  @HiveField(10)
  final WandModel? wandModel;
  @override
  @HiveField(11)
  final String? patronus;
  @override
  @HiveField(12)
  final String? actor;
  @override
  @HiveField(13)
  final bool? alive;
  @override
  @HiveField(14)
  final String? image;

  @override
  String toString() {
    return 'CharacterModel(id: $id, name: $name, species: $species, gender: $gender, house: $house, dateOfBirth: $dateOfBirth, wizard: $wizard, ancestry: $ancestry, eyeColour: $eyeColour, hairColour: $hairColour, wandModel: $wandModel, patronus: $patronus, actor: $actor, alive: $alive, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.house, house) || other.house == house) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.wizard, wizard) || other.wizard == wizard) &&
            (identical(other.ancestry, ancestry) ||
                other.ancestry == ancestry) &&
            (identical(other.eyeColour, eyeColour) ||
                other.eyeColour == eyeColour) &&
            (identical(other.hairColour, hairColour) ||
                other.hairColour == hairColour) &&
            (identical(other.wandModel, wandModel) ||
                other.wandModel == wandModel) &&
            (identical(other.patronus, patronus) ||
                other.patronus == patronus) &&
            (identical(other.actor, actor) || other.actor == actor) &&
            (identical(other.alive, alive) || other.alive == alive) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      species,
      gender,
      house,
      dateOfBirth,
      wizard,
      ancestry,
      eyeColour,
      hairColour,
      wandModel,
      patronus,
      actor,
      alive,
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterModelCopyWith<_$_CharacterModel> get copyWith =>
      __$$_CharacterModelCopyWithImpl<_$_CharacterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterModelToJson(
      this,
    );
  }
}

abstract class _CharacterModel extends CharacterModel {
  const factory _CharacterModel(
      {@HiveField(0) final String? id,
      @HiveField(1) final String? name,
      @HiveField(2) final String? species,
      @HiveField(3) final String? gender,
      @HiveField(4) final String? house,
      @HiveField(5) final String? dateOfBirth,
      @HiveField(6) final bool? wizard,
      @HiveField(7) final String? ancestry,
      @HiveField(8) final String? eyeColour,
      @HiveField(9) final String? hairColour,
      @JsonKey(name: 'wand') @HiveField(10) final WandModel? wandModel,
      @HiveField(11) final String? patronus,
      @HiveField(12) final String? actor,
      @HiveField(13) final bool? alive,
      @HiveField(14) final String? image}) = _$_CharacterModel;
  const _CharacterModel._() : super._();

  factory _CharacterModel.fromJson(Map<String, dynamic> json) =
      _$_CharacterModel.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  String? get species;
  @override
  @HiveField(3)
  String? get gender;
  @override
  @HiveField(4)
  String? get house;
  @override
  @HiveField(5)
  String? get dateOfBirth;
  @override
  @HiveField(6)
  bool? get wizard;
  @override
  @HiveField(7)
  String? get ancestry;
  @override
  @HiveField(8)
  String? get eyeColour;
  @override
  @HiveField(9)
  String? get hairColour;
  @override
  @JsonKey(name: 'wand')
  @HiveField(10)
  WandModel? get wandModel;
  @override
  @HiveField(11)
  String? get patronus;
  @override
  @HiveField(12)
  String? get actor;
  @override
  @HiveField(13)
  bool? get alive;
  @override
  @HiveField(14)
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterModelCopyWith<_$_CharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
