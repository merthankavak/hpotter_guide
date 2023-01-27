import 'package:injectable/injectable.dart';

import '../../../../core/constants/network/network_constants.dart';
import '../../../../core/init/network/dio_client.dart';
import '../../../../shared/data/models/spells/spells_model.dart';
import '../../../../shared/domain/entities/spells/spells.dart';

abstract class RemoteSpellsDataSource {
  Future<List<Spells>> fetchSpells();
  Future<List<Spells>> searchSpell(String spellName);
}

@LazySingleton(as: RemoteSpellsDataSource)
class RemoteSpellsDataSourceImpl implements RemoteSpellsDataSource {
  final DioClient dioClient;

  RemoteSpellsDataSourceImpl({required this.dioClient});

  @override
  Future<List<Spells>> fetchSpells() async {
    final data = await dioClient.get(NetworkConstants.spells) as List;
    return List.from(data.map((item) => SpellsModel.fromJson(item).toEntity()).toList());
  }

  @override
  Future<List<Spells>> searchSpell(String spellName) async {
    final spellsList = await fetchSpells();
    return spellsList
        .where((spell) => spell.name!.toLowerCase().startsWith(spellName.toLowerCase()))
        .toList();
  }
}
