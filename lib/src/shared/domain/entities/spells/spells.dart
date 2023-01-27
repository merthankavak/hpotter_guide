import 'package:freezed_annotation/freezed_annotation.dart';

part 'spells.freezed.dart';

@freezed
class Spells with _$Spells {
  const factory Spells({
    String? id,
    String? name,
    String? description,
  }) = _Spells;
}
