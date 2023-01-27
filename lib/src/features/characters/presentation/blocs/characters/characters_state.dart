part of 'characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.loading() = _Loading;
  const factory CharactersState.loaded({required List<Character> characters}) = _Loaded;
  const factory CharactersState.error({required ErrorObject error}) = _LoadFailure;
}
