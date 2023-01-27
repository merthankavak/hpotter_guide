part of 'spells_bloc.dart';

@freezed
class SpellsEvent with _$SpellsEvent {
  const factory SpellsEvent.fetchSpells() = _FetchSpells;
  const factory SpellsEvent.searchSpell({required String spellName}) = _SearchSpell;
}
