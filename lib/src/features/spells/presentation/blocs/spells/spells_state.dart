part of 'spells_bloc.dart';

@freezed
class SpellsState with _$SpellsState {
  const factory SpellsState.loading() = _Loading;
  const factory SpellsState.loaded({required List<Spells> spells}) = _Loaded;
  const factory SpellsState.error({required ErrorObject error}) = _LoadFailure;
}
