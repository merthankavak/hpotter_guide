import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:kartal/kartal.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/gen/assets.gen.dart';
import '../../../../core/gen/colors.gen.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../shared/domain/entities/character/character.dart';
import '../../../../shared/presentation/widgets/custom_text_field.dart';
import '../../../../shared/presentation/widgets/widgets.dart';
import '../blocs/characters/characters_bloc.dart';

class CharactersView extends StatelessWidget {
  const CharactersView({super.key});

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(duration: context.durationLow);

    return FocusWidget(
      child: Scaffold(
        appBar: AppBar(title: const Text('Characters')),
        body: SafeArea(
          child: BlocBuilder<CharactersBloc, CharactersState>(
            builder: (context, state) => _buildCharactersView(debouncer, context, state),
          ),
        ),
      ),
    );
  }

  Widget _buildCharactersView(Debouncer debouncer, BuildContext context, CharactersState state) {
    return Padding(
      padding: context.paddingNormal,
      child: Column(
        children: [
          CustomTextField(
            key: key,
            labelText: 'Search',
            suffixIcon: Icon(Icons.search, size: 3.h),
            onChanged: (value) {
              debouncer.run(() => context
                  .read<CharactersBloc>()
                  .add(CharactersEvent.searchCharacter(characterName: value)));
            },
          ),
          SizedBox(height: 2.h),
          Expanded(
            child: state.when(
              loading: () => const Center(child: CircularProgressIndicator.adaptive()),
              error: (errorObject) => CustomErrorWidget(errorObject: errorObject),
              loaded: (characters) => _buildCharactersGridView(characters),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCharactersGridView(List<Character> characters) {
    return SingleChildScrollView(
      child: MasonryGridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 2.h,
        crossAxisSpacing: 2.h,
        itemCount: characters.length,
        itemBuilder: (context, index) {
          Character character = characters[index];
          return InkWell(
              onTap: () => context.goNamed('character', extra: character),
              child: _DiscoverUserCard(character: character, index: index));
        },
      ),
    );
  }
}

class _DiscoverUserCard extends StatelessWidget {
  const _DiscoverUserCard({
    Key? key,
    required this.character,
    required this.index,
  }) : super(key: key);

  final Character character;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        (character.image!.isNullOrEmpty)
            ? Container(
                height: (index == 0) ? 30.h : 37.h,
                width: 100.w,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(fit: BoxFit.cover, image: Assets.image.image1.provider())),
              )
            : CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: character.image!,
                height: (index == 0) ? 30.h : 37.h,
                width: 100.w),
        const CustomGradientOverlay(
            stops: [0.1, 1.0], colors: [ColorName.transparent, ColorName.black]),
        Positioned(
          left: 1.h,
          bottom: 1.h,
          child: SizedBox(
              width: 35.w, child: Text(character.name!, style: context.textTheme.bodyMedium)),
        ),
      ],
    );
  }
}
