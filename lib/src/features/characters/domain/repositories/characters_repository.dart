import 'package:dartz/dartz.dart';

import '../../../../core/error/failures/failures.dart';
import '../../../../shared/domain/entities/character/character.dart';

abstract class CharactersRepository {
  Future<Either<Failures, List<Character>>> fetchAllCharacters();
  Future<Either<Failures, List<Character>>> searchCharacter(String characterName);
}
