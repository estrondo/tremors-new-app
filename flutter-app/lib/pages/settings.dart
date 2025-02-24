import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tremors/components/input.dart';
import 'package:tremors/components/section.dart';
import 'package:tremors/components/square_button.dart';
import 'package:tremors/extensions.dart';
import 'package:tremors/functions.dart';
import 'package:tremors/l10n.dart';
import 'package:tremors/managers/security_manager.dart';
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
      bottom: Consumer<SecurityManager>(
        builder: (context, securityManager, _) =>
            _buildDanger(context, securityManager, l10n),
      ),
    );
  }

  Widget _buildSettings(BuildContext context, AppLocalizations l10n) {
    return Column(
      children: [
        ...horizontallySpaced([
          Input(
            onPressed: () {},
            label: l10n.settingsInputNameLabel,
            sample: const Text("sample"),
          ),
          Input(
            onPressed: () {},
            label: l10n.settingsInputEmailLabel,
            sample: const Text("email"),
          ),
        ])
      ],
    );
  }

  Widget _buildDanger(
    BuildContext context,
    SecurityManager securityManager,
    AppLocalizations l10n,
  ) {
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
                onPressed: () => _logoutAccount(context, securityManager),
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
                onPressed: () => _deleteAccount(context, securityManager),
                backgroundColor: colorScheme.error,
                child: Text(
                  l10n.settingsDeleteAccountLabel,
                  style: textTheme.labelLarge!.copyWith(
                    color: colorScheme.onError,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _logoutAccount(
      BuildContext context, SecurityManager securityManager) async {
    await securityManager.logout();
    if (context.mounted) {
      context.go("/");
    }
  }

  void _deleteAccount(
      BuildContext context, SecurityManager securityManager) async {
    if (context.mounted) {
      context.go("/");
    }
  }
}
