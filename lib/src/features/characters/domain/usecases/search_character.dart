import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures/failures.dart';
import '../../../../shared/domain/entities/character/character.dart';
import '../../../../shared/domain/usecases/usecases.dart';
import '../repositories/characters_repository.dart';

@injectable
class SearchCharacter implements UseCase<List<Character>, SearchCharacterParams> {
  final CharactersRepository charactersRepository;

  SearchCharacter(this.charactersRepository);

  @override
  Future<Either<Failures, List<Character>>> call(SearchCharacterParams params) {
    return charactersRepository.searchCharacter(params.characterName);
  }
}

class SearchCharacterParams extends Params {
  final String characterName;

  SearchCharacterParams({required this.characterName});

  @override
  List<Object?> get props => [characterName];
}
