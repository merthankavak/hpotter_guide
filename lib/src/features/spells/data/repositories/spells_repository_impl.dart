import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions/exceptions.dart';
import '../../../../core/error/failures/failures.dart';
import '../../../../shared/domain/entities/spells/spells.dart';
import '../../domain/repositories/spells_repository.dart';
import '../datasources/local_spells_datasource.dart';
import '../datasources/remote_spells_datasource.dart';

@LazySingleton(as: SpellsRepository)
class SpellsRepositoryImpl implements SpellsRepository {
  final RemoteSpellsDataSource remoteSpellsDataSource;
  final LocalSpellsDataSource localSpellsDataSource;

  SpellsRepositoryImpl(this.remoteSpellsDataSource, this.localSpellsDataSource);

  @override
  Future<Either<Failures, List<Spells>>> fetchSpells() async {
    if ((await localSpellsDataSource.fetchSpells()).isEmpty) {
      try {
        final spells = await remoteSpellsDataSource.fetchSpells();

        for (final spell in spells) {
          localSpellsDataSource.addSpells(spell);
        }
        return Right(spells);
      } on NetworkException catch (e) {
        return Left(NetworkFailure(e));
      }
    } else {
      final spells = await localSpellsDataSource.fetchSpells();
      return Right(spells);
    }
  }

  @override
  Future<Either<Failures, List<Spells>>> searchSpell(String spellName) async {
    final spells = await fetchSpells();

    if (spells.isRight()) {
      final searchResult = spells
          .getOrElse(() => [])
          .where((spell) => spell.name!.toLowerCase().contains(spellName.toLowerCase()))
          .toList();

      if (searchResult.isNotEmpty) {
        return Right(searchResult);
      } else {
        return const Left(NotFoundFailure());
      }
    } else {
      return spells;
    }
  }
}
