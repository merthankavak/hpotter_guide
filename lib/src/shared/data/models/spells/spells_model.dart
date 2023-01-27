import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../../domain/entities/spells/spells.dart';

part 'spells_model.freezed.dart';
part 'spells_model.g.dart';

@HiveType(typeId: 3)
@freezed
class SpellsModel with _$SpellsModel {
  const SpellsModel._();

  const factory SpellsModel({
    @HiveField(0) String? id,
    @HiveField(1) String? name,
    @HiveField(2) String? description,
  }) = _SpellsModel;

  factory SpellsModel.fromJson(Map<String, Object?> json) => _$SpellsModelFromJson(json);

  factory SpellsModel.fromEntity(Spells spells) {
    return SpellsModel(
      id: spells.id,
      name: spells.name,
      description: spells.description,
    );
  }

  Spells toEntity() {
    return Spells(
      id: id,
      name: name,
      description: description,
    );
  }
}
