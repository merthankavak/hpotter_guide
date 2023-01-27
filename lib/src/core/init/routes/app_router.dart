import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../features/characters/presentation/blocs/characters/characters_bloc.dart';
import '../../../features/characters/presentation/view/character_detail_view.dart';
import '../../../features/characters/presentation/view/characters_view.dart';
import '../../../features/spells/presentation/blocs/spells/spells_bloc.dart';
import '../../../features/spells/presentation/view/spells_view.dart';
import '../../../shared/domain/entities/character/character.dart';
import '../../../shared/presentation/widgets/widgets.dart';
import '../../di/injection.dart';

class AppRouter {
  static AppRouter? _instance;
  static AppRouter get instance {
    _instance ??= AppRouter._init();
    return _instance!;
  }

  AppRouter._init();

  late final GoRouter router = GoRouter(
    initialLocation: '/characters',
    routes: <RouteBase>[
      ShellRoute(
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return CustomNavBar(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            name: 'characters',
            path: '/characters',
            builder: (context, state) {
              return BlocProvider(
                create: (_) =>
                    getIt<CharactersBloc>()..add(const CharactersEvent.fetchAllCharacters()),
                child: const CharactersView(),
              );
            },
            routes: <RouteBase>[
              GoRoute(
                name: 'character',
                path: 'character',
                builder: (context, state) {
                  return CharacterDetailView(character: state.extra as Character);
                },
              ),
            ],
          ),
          GoRoute(
            name: 'spells',
            path: '/spells',
            builder: (context, state) {
              return BlocProvider(
                create: (_) => getIt<SpellsBloc>()..add(const SpellsEvent.fetchSpells()),
                child: const SpellsView(),
              );
            },
          ),
        ],
      ),
    ],
  );
}
