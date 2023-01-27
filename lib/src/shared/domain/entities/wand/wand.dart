import 'package:freezed_annotation/freezed_annotation.dart';

part 'wand.freezed.dart';

@freezed
class Wand with _$Wand {
  const factory Wand({
    String? wood,
    String? core,
    num? length,
  }) = _Wand;
}
