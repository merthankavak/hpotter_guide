import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures/failures.dart';
import '../../../../shared/domain/entities/spells/spells.dart';
import '../../../../shared/domain/usecases/usecases.dart';
import '../repositories/spells_repository.dart';

@injectable
class SearchSpell implements UseCase<List<Spells>, SearchSpellParams> {
  final SpellsRepository spellsRepository;

  SearchSpell(this.spellsRepository);

  @override
  Future<Either<Failures, List<Spells>>> call(SearchSpellParams params) {
    return spellsRepository.searchSpell(params.spellName);
  }
}

class SearchSpellParams extends Params {
  final String spellName;

  SearchSpellParams({required this.spellName});

  @override
  List<Object?> get props => [spellName];
}
