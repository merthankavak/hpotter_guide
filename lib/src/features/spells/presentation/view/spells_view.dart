import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/gen/colors.gen.dart';
import '../../../../core/helpers/debouncer.dart';
import '../../../../shared/domain/entities/spells/spells.dart';
import '../../../../shared/presentation/widgets/custom_text_field.dart';
import '../../../../shared/presentation/widgets/widgets.dart';
import '../blocs/spells/spells_bloc.dart';

class SpellsView extends StatelessWidget {
  const SpellsView({super.key});

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(duration: context.durationLow);

    return FocusWidget(
      child: Scaffold(
        appBar: AppBar(title: const Text('Spells')),
        body: SafeArea(
          child: BlocBuilder<SpellsBloc, SpellsState>(
            builder: (context, state) {
              return Padding(
                padding: context.paddingNormal,
                child: Column(
                  children: [
                    CustomTextField(
                      labelText: 'Search',
                      suffixIcon: Icon(Icons.search, size: 3.h),
                      onChanged: (value) {
                        debouncer.run(() => context
                            .read<SpellsBloc>()
                            .add(SpellsEvent.searchSpell(spellName: value)));
                      },
                    ),
                    SizedBox(height: 2.h),
                    Expanded(
                      child: state.when(
                        loading: () => const Center(child: CircularProgressIndicator.adaptive()),
                        error: (errorObject) => CustomErrorWidget(errorObject: errorObject),
                        loaded: (spells) => buildListViewSpells(spells),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  ListView buildListViewSpells(List<Spells> spells) {
    return ListView.builder(
      itemCount: spells.length,
      itemBuilder: (context, index) {
        Spells spell = spells[index];
        return Card(
          child: ListTile(
            title: Text(spell.name!,
                style: context.textTheme.bodyMedium!.copyWith(color: ColorName.white60)),
            subtitle: SelectableText(spell.description!, style: context.textTheme.bodySmall),
          ),
        );
      },
    );
  }
}
