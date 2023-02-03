// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hpotter_guide/src/core/di/register_module.dart' as _i19;
import 'package:hpotter_guide/src/core/init/network/dio_client.dart' as _i4;
import 'package:hpotter_guide/src/features/characters/data/datasources/local_characters_datasource.dart'
    as _i5;
import 'package:hpotter_guide/src/features/characters/data/datasources/remote_characters_datasource.dart'
    as _i7;
import 'package:hpotter_guide/src/features/characters/data/repositories/characters_repository_impl.dart'
    as _i12;
import 'package:hpotter_guide/src/features/characters/domain/repositories/characters_repository.dart'
    as _i11;
import 'package:hpotter_guide/src/features/characters/domain/usecases/fetch_all_characters.dart'
    as _i13;
import 'package:hpotter_guide/src/features/characters/domain/usecases/search_character.dart'
    as _i15;
import 'package:hpotter_guide/src/features/characters/presentation/blocs/characters/characters_bloc.dart'
    as _i18;
import 'package:hpotter_guide/src/features/spells/data/datasources/local_spells_datasource.dart'
    as _i6;
import 'package:hpotter_guide/src/features/spells/data/datasources/remote_spells_datasource.dart'
    as _i8;
import 'package:hpotter_guide/src/features/spells/data/repositories/spells_repository_impl.dart'
    as _i10;
import 'package:hpotter_guide/src/features/spells/domain/repositories/spells_repository.dart'
    as _i9;
import 'package:hpotter_guide/src/features/spells/domain/usecases/fetch_spells.dart'
    as _i14;
import 'package:hpotter_guide/src/features/spells/domain/usecases/search_spell.dart'
    as _i16;
import 'package:hpotter_guide/src/features/spells/presentation/blocs/spells/spells_bloc.dart'
    as _i17;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i4.DioClient>(() => _i4.DioClient());
    gh.lazySingleton<_i5.LocalCharactersDataSource>(
        () => _i5.LocalCharactersDataSourceImpl());
    gh.lazySingleton<_i6.LocalSpellsDataSource>(
        () => _i6.LocalSpellsDataSourceImpl());
    gh.lazySingleton<_i7.RemoteCharactersDataSource>(() =>
        _i7.RemoteCharactersDataSourceImpl(dioClient: gh<_i4.DioClient>()));
    gh.lazySingleton<_i8.RemoteSpellsDataSource>(
        () => _i8.RemoteSpellsDataSourceImpl(dioClient: gh<_i4.DioClient>()));
    gh.lazySingleton<_i9.SpellsRepository>(() => _i10.SpellsRepositoryImpl(
          gh<_i8.RemoteSpellsDataSource>(),
          gh<_i6.LocalSpellsDataSource>(),
        ));
    gh.lazySingleton<_i11.CharactersRepository>(
        () => _i12.CharactersRepositoryImpl(
              gh<_i7.RemoteCharactersDataSource>(),
              gh<_i5.LocalCharactersDataSource>(),
            ));
    gh.factory<_i13.FetchAllCharacters>(
        () => _i13.FetchAllCharacters(gh<_i11.CharactersRepository>()));
    gh.factory<_i14.FetchSpells>(
        () => _i14.FetchSpells(gh<_i9.SpellsRepository>()));
    gh.factory<_i15.SearchCharacter>(
        () => _i15.SearchCharacter(gh<_i11.CharactersRepository>()));
    gh.factory<_i16.SearchSpell>(
        () => _i16.SearchSpell(gh<_i9.SpellsRepository>()));
    gh.factory<_i17.SpellsBloc>(() => _i17.SpellsBloc(
          fetchSpells: gh<_i14.FetchSpells>(),
          searchSpell: gh<_i16.SearchSpell>(),
        ));
    gh.factory<_i18.CharactersBloc>(() => _i18.CharactersBloc(
          fetchAllCharacters: gh<_i13.FetchAllCharacters>(),
          searchCharacter: gh<_i15.SearchCharacter>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i19.RegisterModule {}
