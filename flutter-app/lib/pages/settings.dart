import 'package:flutter/material.dart';
import 'package:tremors/components/input.dart';
import 'package:tremors/components/section.dart';
import 'package:tremors/components/square_button.dart';
import 'package:tremors/extensions.dart';
import 'package:tremors/functions.dart';
import 'package:tremors/l10n.dart';
import 'package:tremors/tremors_panel.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return TremorsDualPanel(
      title: l10n.settingsPanelTitle,
      bottomHeight: 150,
      top: _buildSettings(context, l10n),
      bottom: _buildDanger(context, l10n),
    );
  }

  Widget _buildSettings(BuildContext context, AppLocalizations l10n) {
    return Column(
      children: [
        ...horizontallySpaced([
          Input(
            onPressed: () {},
            label: l10n.settingsInputNameLabel,
            sample: Text("sample"),
          ),
          Input(
            onPressed: () {},
            label: l10n.settingsInputEmailLabel,
            sample: Text("email"),
          ),
        ])
      ],
    );
  }

  Widget _buildDanger(BuildContext context, AppLocalizations l10n) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return TremorsSection(
      title: l10n.settingsDangerLabel,
      titleAlignment: Alignment.center,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 200,
              child: SquaredButton(
                onPressed: () {},
                backgroundColor: colorScheme.onError,
                child: Text(
                  l10n.settingsLogoutLabel,
                  style: textTheme.labelLarge!.copyWith(
                    color: colorScheme.error,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: SquaredButton(
                onPressed: () {},
                backgroundColor: colorScheme.error,
                child: Text(l10n.settingsDeleteAccountLabel, style: textTheme.labelLarge!.copyWith(
                  color: colorScheme.onError,
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
