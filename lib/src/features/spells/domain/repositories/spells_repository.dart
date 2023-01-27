import 'package:dartz/dartz.dart';

import '../../../../core/error/failures/failures.dart';
import '../../../../shared/domain/entities/spells/spells.dart';

abstract class SpellsRepository {
  Future<Either<Failures, List<Spells>>> fetchSpells();
  Future<Either<Failures, List<Spells>>> searchSpell(String spellName);
}
