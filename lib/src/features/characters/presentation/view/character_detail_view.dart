import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/gen/assets.gen.dart';
import '../../../../core/gen/colors.gen.dart';
import '../../../../shared/domain/entities/character/character.dart';

class CharacterDetailView extends StatelessWidget {
  final Character character;

  const CharacterDetailView({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(character.name!)),
      body: SafeArea(child: SingleChildScrollView(child: _buildCharacterDetailView(context))),
    );
  }

  Widget _buildCharacterDetailView(BuildContext context) {
    return Padding(
      padding: context.paddingNormal,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: context.lowBorderRadius,
            child: (character.image!.isNullOrEmpty)
                ? Container(
                    height: 20.h,
                    width: 20.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: Assets.image.image1.provider())),
                  )
                : CachedNetworkImage(
                    fit: BoxFit.fill, imageUrl: character.image!, height: 20.h, width: 20.h),
          ),
          SizedBox(height: 1.h),
          character.actor.isNotNullOrNoEmpty
              ? Text(character.actor!,
                  style: context.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold))
              : const SizedBox.shrink(),
          SizedBox(height: 2.h),
          buildCharacterFeatures(context),
        ],
      ),
    );
  }

  Widget buildCharacterFeatures(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _DetailsItemCard(title: 'Species', subtitle: character.species)),
            Expanded(child: _DetailsItemCard(title: 'Gender', subtitle: character.gender)),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: _DetailsItemCard(title: 'Date of Birth', subtitle: character.dateOfBirth)),
            Expanded(
                child: _DetailsItemCard(title: 'Alive', subtitle: character.alive! ? 'Yes' : 'No')),
          ],
        ),
        Row(
          children: [
            Expanded(child: _DetailsItemCard(title: 'Eye Colour', subtitle: character.eyeColour)),
            Expanded(child: _DetailsItemCard(title: 'Hair Colour', subtitle: character.hairColour)),
          ],
        ),
        Row(
          children: [
            Expanded(
                child:
                    _DetailsItemCard(title: 'Wizard', subtitle: character.wizard! ? 'Yes' : 'No')),
            Expanded(child: _DetailsItemCard(title: 'Ancestry', subtitle: character.ancestry)),
          ],
        ),
        Row(
          children: [
            Expanded(child: _DetailsItemCard(title: 'House', subtitle: character.house)),
            Expanded(child: _DetailsItemCard(title: 'Patronus', subtitle: character.patronus)),
          ],
        ),
        (character.wand == null)
            ? const SizedBox.shrink()
            : Card(
                child: ListTile(
                  title: Text('Wand',
                      style: context.textTheme.bodyMedium!.copyWith(color: ColorName.white60)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wood: ${(character.wand!.wood.isNotNullOrNoEmpty) ? character.wand?.wood!.toTitleCase() : '-'}',
                        style: context.textTheme.bodySmall,
                      ),
                      Text(
                        'Core: ${(character.wand!.core.isNotNullOrNoEmpty) ? character.wand?.core!.toTitleCase() : '-'}',
                        style: context.textTheme.bodySmall,
                      ),
                      Text(
                        "Length: ${(character.wand!.length != null) ? '${character.wand?.length!.toString()} inches' : '-'}",
                        style: context.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ),
      ],
    );
  }
}

class _DetailsItemCard extends StatelessWidget {
  const _DetailsItemCard({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        title: Text(title, style: context.textTheme.bodyMedium!.copyWith(color: ColorName.white60)),
        subtitle: Text((subtitle.isNotNullOrNoEmpty ? subtitle : '-').toTitleCase(),
            style: context.textTheme.bodySmall),
      ),
    );
  }
}
