import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../domain/entities/character/character.dart';
import '../wand/wand_model.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@HiveType(typeId: 1)
@freezed
class CharacterModel with _$CharacterModel {
  const CharacterModel._();

  const factory CharacterModel({
    @HiveField(0) String? id,
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
    @HiveField(14) String? image,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, Object?> json) => _$CharacterModelFromJson(json);

  factory CharacterModel.fromEntity(Character character) {
    return CharacterModel(
      id: character.id,
      name: character.name,
      species: character.species,
      gender: character.gender,
      house: character.house,
      dateOfBirth: character.dateOfBirth,
      wizard: character.wizard,
      ancestry: character.ancestry,
      eyeColour: character.eyeColour,
      hairColour: character.hairColour,
      wandModel: WandModel.fromEntity(character.wand),
      patronus: character.patronus,
      actor: character.actor,
      alive: character.alive,
      image: character.image,
    );
  }

  Character toEntity() {
    return Character(
      id: id,
      name: name,
      species: species,
      gender: gender,
      house: house,
      dateOfBirth: dateOfBirth,
      wizard: wizard,
      ancestry: ancestry,
      eyeColour: eyeColour,
      hairColour: hairColour,
      wand: wandModel?.toEntity(),
      patronus: patronus,
      actor: actor,
      alive: alive,
      image: image,
    );
  }
}
