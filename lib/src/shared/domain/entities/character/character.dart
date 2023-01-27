import 'package:freezed_annotation/freezed_annotation.dart';

import '../wand/wand.dart';

part 'character.freezed.dart';

@freezed
class Character with _$Character {
  const factory Character({
    String? id,
    String? name,
    String? species,
    String? gender,
    String? house,
    String? dateOfBirth,
    bool? wizard,
    String? ancestry,
    String? eyeColour,
    String? hairColour,
    Wand? wand,
    String? patronus,
    String? actor,
    bool? alive,
    String? image,
  }) = _Character;
}
