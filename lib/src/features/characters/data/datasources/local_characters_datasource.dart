import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';

import '../../../../shared/data/models/character/character_model.dart';
import '../../../../shared/domain/entities/character/character.dart';

abstract class LocalCharactersDataSource {
  Future<void> addCharacter(Character character);
  Future<List<Character>> fetchAllCharacters();
  Future<List<Character>> searchCharacter(String characterName);
}

@LazySingleton(as: LocalCharactersDataSource)
class LocalCharactersDataSourceImpl implements LocalCharactersDataSource {
  String boxName = 'characters';

  @override
  Future<void> addCharacter(Character character) async {
    Box box = await _openBox();
    await box.put(character.id, CharacterModel.fromEntity(character));
  }

  @override
  Future<List<Character>> fetchAllCharacters() async {
    Box<CharacterModel> box = await _openBox() as Box<CharacterModel>;
    final characterList = box.values.toList().map((character) => character.toEntity()).toList();

    characterList.sort(
        (a, b) => a.image!.isEmpty ? 1 : (b.image!.isEmpty ? -1 : a.image!.compareTo(b.image!)));

    return characterList;
  }

  @override
  Future<List<Character>> searchCharacter(String characterName) async {
    final characterList = await fetchAllCharacters();
    return characterList
        .where((character) => character.name!.toLowerCase().contains(characterName.toLowerCase()))
        .toList();
  }

  Future<Box> _openBox() async {
    return Hive.openBox<CharacterModel>(boxName);
  }
}
