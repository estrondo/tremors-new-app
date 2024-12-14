import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:tremors/components/input.dart';
import 'package:tremors/components/section.dart';
import 'package:tremors/components/square_button.dart';
import 'package:tremors/extensions.dart';
import 'package:tremors/functions.dart';
import 'package:tremors/managers/search.dart';
import 'package:tremors/tremors_icons.dart';
import 'package:tremors/tremors_panel.dart';

class TremorsSearchPage extends StatelessWidget {
  const TremorsSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return TremorsDualPanel(
      title: l10n.searchPanelTitle,
      top: const TremorsSearch(),
      bottom: const TremorsSavedSearches(),
    );
  }
}

class TremorsSearch extends StatelessWidget {
  const TremorsSearch({super.key});

  static const _magnitude = 1, _time = 2, _locations = 3;

  static const _spacer = SizedBox(height: 10);

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final l10n = context.l10n;
    final mediaQuery = context.mediaQuery;

    final sample = Text(
      "A super big sample!",
      style: textTheme.labelMedium!.copyWith(color: colorScheme.primary),
    );

    final labelStyle = textTheme.labelLarge!.copyWith(
      color: colorScheme.primary,
    );

    return Column(
      children: [
        ...horizontallySpaced([
          Input(
            width: mediaQuery.size.width,
            onPressed: _onPressed(context, _magnitude),
            label: l10n.searchInputMagnitudeLabel,
            sample: sample,
          ),
          Input(
            width: mediaQuery.size.width,
            onPressed: _onPressed(context, _time),
            label: l10n.searchInputTimeLabel,
            sample: sample,
          ),
          Input(
            width: mediaQuery.size.width,
            onPressed: _onPressed(context, _locations),
            label: l10n.searchInputLocations,
            sample: sample,
          )
        ]),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SquaredButton.secondary(
              onPressed: () {},
              child: Text(
                l10n.searchSave,
                style: labelStyle,
              ),
            ),
            SquaredButton.secondary(
              onPressed: () {},
              child: Text(
                l10n.searchFilter,
                style: labelStyle,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        )
      ],
    );
  }

  VoidCallback _onPressed(BuildContext context, int input) {
    return () => ();
  }
}

class TremorsSavedSearches extends StatelessWidget {
  const TremorsSavedSearches({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return TremorsSection(
      title: l10n.searchSavedTitle,
      child: Consumer<SearchManager>(builder: _buildSavedList),
    );
  }

  Widget _buildSavedList(
    BuildContext context,
    SearchManager searchManager,
    Widget? child,
  ) {
    final textTheme = context.textTheme;
    final colorScheme = context.colorScheme;

    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        for (final layer in searchManager.savedOnes)
          Slidable(
            key: ValueKey(layer.id),
            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              extentRatio: 0.3,
              children: [
                SlidableAction(
                  onPressed: (ctx) {},
                  icon: TremorsIcons.edit,
                  backgroundColor: colorScheme.primary,
                  foregroundColor: colorScheme.onPrimary,
                  padding: EdgeInsets.zero,
                ),
                SlidableAction(
                  onPressed: (ctx) {},
                  icon: TremorsIcons.delete,
                  backgroundColor: colorScheme.error,
                  foregroundColor: colorScheme.onError,
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    layer.title,
                    style: textTheme.labelLarge,
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
