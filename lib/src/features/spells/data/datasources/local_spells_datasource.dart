import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../../shared/data/models/spells/spells_model.dart';
import '../../../../shared/domain/entities/spells/spells.dart';

abstract class LocalSpellsDataSource {
  Future<void> addSpells(Spells spell);
  Future<List<Spells>> fetchSpells();
}

@LazySingleton(as: LocalSpellsDataSource)
class LocalSpellsDataSourceImpl implements LocalSpellsDataSource {
  String boxName = 'spells';

  @override
  Future<void> addSpells(Spells spell) async {
    Box box = await _openBox();
    await box.put(spell.id, SpellsModel.fromEntity(spell));
  }

  @override
  Future<List<Spells>> fetchSpells() async {
    Box<SpellsModel> box = await _openBox() as Box<SpellsModel>;
    return box.values.toList().map((character) => character.toEntity()).toList();
  }

  Future<Box> _openBox() async {
    return Hive.openBox<SpellsModel>(boxName);
  }
}
