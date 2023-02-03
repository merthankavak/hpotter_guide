import 'package:dartz/dartz.dart';
import 'package:hpotter_guide/src/core/error/exceptions/exceptions.dart';
import 'package:hpotter_guide/src/core/error/failures/failures.dart';

import 'package:hpotter_guide/src/features/characters/data/datasources/local_characters_datasource.dart';
import 'package:hpotter_guide/src/features/characters/data/datasources/remote_characters_datasource.dart';
import 'package:hpotter_guide/src/features/characters/data/repositories/characters_repository_impl.dart';
import 'package:hpotter_guide/src/shared/domain/entities/character/character.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'characters_repository_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<RemoteCharactersDataSourceImpl>(),
  MockSpec<LocalCharactersDataSourceImpl>(),
  MockSpec<Character>()
])
void main() {
  late CharactersRepositoryImpl charactersRepository;
  late MockRemoteCharactersDataSourceImpl remoteCharactersDataSource;
  late MockLocalCharactersDataSourceImpl localCharactersDataSource;

  setUp(() {
    remoteCharactersDataSource = MockRemoteCharactersDataSourceImpl();
    localCharactersDataSource = MockLocalCharactersDataSourceImpl();
    charactersRepository =
        CharactersRepositoryImpl(remoteCharactersDataSource, localCharactersDataSource);
  });

  group('fetchAllCharacters', () {
    final charactersList = List.filled(2, MockCharacter());
    final networkException = NetworkException(message: 'Network Exception');

    group('local data source is empty', () {
      setUp(() => when(localCharactersDataSource.fetchAllCharacters()).thenAnswer((_) async => []));

      test('should return characters from remote data source then add local storage successfully',
          () async {
        when(remoteCharactersDataSource.fetchAllCharacters())
            .thenAnswer((_) async => charactersList);

        final result = await charactersRepository.fetchAllCharacters();

        verify(remoteCharactersDataSource.fetchAllCharacters());

        expect(result, Right(charactersList));
      });

      test('should return failure from remote data source if its unsuccessful', () async {
        when(remoteCharactersDataSource.fetchAllCharacters()).thenThrow(networkException);

        final result = await charactersRepository.fetchAllCharacters();

        verify(remoteCharactersDataSource.fetchAllCharacters());

        expect(result, Left<Failures, List<Character>>(Failures.networkFailure(networkException)));
      });
    });

    group('local data source is not empty', () {
      setUp(() => when(localCharactersDataSource.fetchAllCharacters())
          .thenAnswer((_) async => charactersList));

      test('should return characters from local data source', () async {
        when(localCharactersDataSource.fetchAllCharacters())
            .thenAnswer((_) async => charactersList);

        final result = await charactersRepository.fetchAllCharacters();

        verify(localCharactersDataSource.fetchAllCharacters());

        expect(result, Right(charactersList));
      });
    });
  });
}
