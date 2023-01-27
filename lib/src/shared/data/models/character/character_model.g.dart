// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharacterModelAdapter extends TypeAdapter<CharacterModel> {
  @override
  final int typeId = 1;

  @override
  CharacterModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterModel(
      id: fields[0] as String?,
      name: fields[1] as String?,
      species: fields[2] as String?,
      gender: fields[3] as String?,
      house: fields[4] as String?,
      dateOfBirth: fields[5] as String?,
      wizard: fields[6] as bool?,
      ancestry: fields[7] as String?,
      eyeColour: fields[8] as String?,
      hairColour: fields[9] as String?,
      wandModel: fields[10] as WandModel?,
      patronus: fields[11] as String?,
      actor: fields[12] as String?,
      alive: fields[13] as bool?,
      image: fields[14] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CharacterModel obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.species)
      ..writeByte(3)
      ..write(obj.gender)
      ..writeByte(4)
      ..write(obj.house)
      ..writeByte(5)
      ..write(obj.dateOfBirth)
      ..writeByte(6)
      ..write(obj.wizard)
      ..writeByte(7)
      ..write(obj.ancestry)
      ..writeByte(8)
      ..write(obj.eyeColour)
      ..writeByte(9)
      ..write(obj.hairColour)
      ..writeByte(10)
      ..write(obj.wandModel)
      ..writeByte(11)
      ..write(obj.patronus)
      ..writeByte(12)
      ..write(obj.actor)
      ..writeByte(13)
      ..write(obj.alive)
      ..writeByte(14)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterModel _$$_CharacterModelFromJson(Map<String, dynamic> json) =>
    _$_CharacterModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      species: json['species'] as String?,
      gender: json['gender'] as String?,
      house: json['house'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      wizard: json['wizard'] as bool?,
      ancestry: json['ancestry'] as String?,
      eyeColour: json['eyeColour'] as String?,
      hairColour: json['hairColour'] as String?,
      wandModel: json['wand'] == null
          ? null
          : WandModel.fromJson(json['wand'] as Map<String, dynamic>),
      patronus: json['patronus'] as String?,
      actor: json['actor'] as String?,
      alive: json['alive'] as bool?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_CharacterModelToJson(_$_CharacterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'species': instance.species,
      'gender': instance.gender,
      'house': instance.house,
      'dateOfBirth': instance.dateOfBirth,
      'wizard': instance.wizard,
      'ancestry': instance.ancestry,
      'eyeColour': instance.eyeColour,
      'hairColour': instance.hairColour,
      'wand': instance.wandModel,
      'patronus': instance.patronus,
      'actor': instance.actor,
      'alive': instance.alive,
      'image': instance.image,
    };
