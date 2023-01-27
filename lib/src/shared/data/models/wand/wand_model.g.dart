// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wand_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WandModelAdapter extends TypeAdapter<WandModel> {
  @override
  final int typeId = 2;

  @override
  WandModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WandModel(
      wood: fields[0] as String?,
      core: fields[1] as String?,
      length: fields[2] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, WandModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.wood)
      ..writeByte(1)
      ..write(obj.core)
      ..writeByte(2)
      ..write(obj.length);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WandModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WandModel _$$_WandModelFromJson(Map<String, dynamic> json) => _$_WandModel(
      wood: json['wood'] as String?,
      core: json['core'] as String?,
      length: json['length'] as num?,
    );

Map<String, dynamic> _$$_WandModelToJson(_$_WandModel instance) =>
    <String, dynamic>{
      'wood': instance.wood,
      'core': instance.core,
      'length': instance.length,
    };
