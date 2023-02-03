import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions/exceptions.dart';
import '../../../../core/error/failures/failures.dart';
import '../../../../shared/domain/entities/character/character.dart';
import '../../domain/repositories/characters_repository.dart';
import '../datasources/local_characters_datasource.dart';
import '../datasources/remote_characters_datasource.dart';

@LazySingleton(as: CharactersRepository)
class CharactersRepositoryImpl implements CharactersRepository {
  final RemoteCharactersDataSource remoteCharactersDataSource;
  final LocalCharactersDataSource localCharactersDataSource;

  CharactersRepositoryImpl(this.remoteCharactersDataSource, this.localCharactersDataSource);

  @override
  Future<Either<Failures, List<Character>>> fetchAllCharacters() async {
    if ((await localCharactersDataSource.fetchAllCharacters()).isEmpty) {
      try {
        final characters = await remoteCharactersDataSource.fetchAllCharacters();

        for (final character in characters) {
          localCharactersDataSource.addCharacter(character);
        }
        return Right(characters);
      } on NetworkException catch (e) {
        return Left(NetworkFailure(e));
      }
    } else {
      final characters = await localCharactersDataSource.fetchAllCharacters();
      return Right(characters);
    }
  }

  @override
  Future<Either<Failures, List<Character>>> searchCharacter(String characterName) async {
    if ((await localCharactersDataSource.fetchAllCharacters()).isEmpty) {
      final characters = await remoteCharactersDataSource.searchCharacter(characterName);
      if (characters.isNotEmpty) {
        return Right(characters);
      } else {
        return const Left(NotFoundFailure());
      }
    } else {
      final characters = await localCharactersDataSource.searchCharacter(characterName);

      if (characters.isNotEmpty) {
        return Right(characters);
      } else {
        return const Left(NotFoundFailure());
      }
    }
  }
}
