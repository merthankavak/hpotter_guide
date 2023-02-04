import 'package:injectable/injectable.dart';

import '../../../../core/constants/network/network_constants.dart';
import '../../../../core/init/network/dio_client.dart';
import '../../../../shared/data/models/character/character_model.dart';
import '../../../../shared/domain/entities/character/character.dart';

abstract class RemoteCharactersDataSource {
  Future<List<Character>> fetchAllCharacters();
}

@LazySingleton(as: RemoteCharactersDataSource)
class RemoteCharactersDataSourceImpl implements RemoteCharactersDataSource {
  final DioClient dioClient;

  RemoteCharactersDataSourceImpl({required this.dioClient});

  @override
  Future<List<Character>> fetchAllCharacters() async {
    final data = await dioClient.get(NetworkConstants.characters) as List;
    final List<Character> characterList =
        List.from(data.map((item) => CharacterModel.fromJson(item).toEntity()).toList());

    characterList.sort(
        (a, b) => a.image!.isEmpty ? 1 : (b.image!.isEmpty ? -1 : a.image!.compareTo(b.image!)));

    return characterList;
  }
}
