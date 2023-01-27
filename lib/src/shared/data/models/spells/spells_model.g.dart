// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spells_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SpellsModelAdapter extends TypeAdapter<SpellsModel> {
  @override
  final int typeId = 3;

  @override
  SpellsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpellsModel(
      id: fields[0] as String?,
      name: fields[1] as String?,
      description: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SpellsModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpellsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpellsModel _$$_SpellsModelFromJson(Map<String, dynamic> json) =>
    _$_SpellsModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_SpellsModelToJson(_$_SpellsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
