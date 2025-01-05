import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:provider/provider.dart';
import 'package:tremors/auth/models.dart';
import 'package:tremors/extensions.dart';
import 'package:tremors/managers/security_manager.dart';
import 'package:tremors/security/models.dart';
import 'package:tremors/tremors_icons.dart';

const _padding = SizedBox(height: 10);

const _width = 300.0;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final textTheme = context.textTheme;
    final colorScheme = context.colorScheme;
    final l10n = context.l10n;

    final bottomTextStyle =
        textTheme.bodyMedium!.copyWith(color: colorScheme.outline);

    return Container(
      color: colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _padding,
          SvgPicture.asset(
            "images/logo.svg",
            height: mediaQuery.size.height / 4,
            width: mediaQuery.size.width / 4,
          ),
          _padding,
          Expanded(child: Consumer<SecurityManager>(builder: _build)),
          _padding,
          Text(
            l10n.loginPageDevelopedBy("1.0.0"),
            style: bottomTextStyle,
            textAlign: TextAlign.center,
          ),
          _padding,
        ],
      ),
    );
  }

  Widget _build(BuildContext context, SecurityManager manager, Widget? child) {
    return switch (manager.state) {
      ValuedSecurityState(value: ValuedSecurityState.notLoggedState) =>
        _buildLogin(manager, context),
      ValuedSecurityState(value: ValuedSecurityState.waitingLoggedState) =>
        _buildWaiting(context),
      LoggedSecurityState() => _buildLogged(context),
      FailedSecurityState(cause: final cause, provider: final provider) =>
        _buildFailed(manager, cause, provider, context),
      ValuedSecurityState() => throw UnimplementedError(),
    };
  }

  Widget _buildLogged(BuildContext context) {
    context.delayedGo("/");
    return Container();
  }

  Widget _buildLogin(SecurityManager manager, BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final labelStyle = _labelStyle(textTheme, colorScheme);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (final provider in AuthProvider.values)
          _loginButton(manager, provider, context, colorScheme, labelStyle)
      ].interpolate(const SizedBox(height: 10)),
    );
  }

  TextStyle _labelStyle(TextTheme textTheme, ColorScheme colorScheme) =>
      textTheme.labelLarge!.copyWith(color: colorScheme.onPrimary);

  Widget _buildWaiting(BuildContext context) {
    final colorScheme = context.colorScheme;
    final l10n = context.l10n;
    final textStyle =
        context.textTheme.bodyMedium!.copyWith(color: colorScheme.onSurface);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 60,
          width: 60,
          child: LoadingIndicator(
            indicatorType: Indicator.ballScaleMultiple,
          ),
        ),
        Text(
          l10n.loginAuthenticating,
          style: textStyle,
        )
      ],
    );
  }

  Widget _buildFailed(
    SecurityManager manager,
    Exception cause,
    AuthProvider provider,
    BuildContext context,
  ) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final style = textTheme.titleLarge!.copyWith(
      color: colorScheme.onSurface,
    );
    final l10n = context.l10n;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: _width,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  TremorsIcons.warning,
                  size: 60,
                  color: colorScheme.error,
                ),
              ),
              Flexible(
                child: Text(
                  l10n.loginPageFailed(provider.title),
                  style: style,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        _padding,
        _filledButton(
          onPressed: () => manager.reset(),
          child: Text(
            l10n.loginTryAgainLabel,
            style: _labelStyle(textTheme, colorScheme),
          ),
        )
      ],
    );
  }

  Widget _loginButton(SecurityManager manager, AuthProvider provider,
      BuildContext context, ColorScheme colorScheme, TextStyle textStyle) {
    final l10n = context.l10n;
    return _filledButton(
      onPressed: () {
        manager(provider);
      },
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            color: colorScheme.surface,
            child: SvgPicture.asset(
              "images/${provider.id}-logo.svg",
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                l10n.loginProviderLabel(provider.title),
                style: textStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _filledButton({
  required VoidCallback onPressed,
  required Widget child,
}) =>
    SizedBox(
      width: _width,
      height: 50,
      child: FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(shape: WidgetStateProperty.all(LinearBorder.none)),
        child: Padding(
          padding: const EdgeInsets.only(top: 3, bottom: 3),
          child: child,
        ),
      ),
    );
