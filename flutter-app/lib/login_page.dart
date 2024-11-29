import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:provider/provider.dart';
import 'package:tremors/auth/auth_service.dart';
import 'package:tremors/extensions.dart';
import 'package:tremors/tremors_icons.dart';

const _padding = SizedBox(height: 10);

const _width = 300.0;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final textTheme = context.textTheme;
    final colorScheme = context.colorScheme;

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
          Expanded(child: Consumer<AuthService>(builder: _buildContent)),
          _padding,
          Text(
            "Developed by Estrondo\nVersion 1.0.0",
            style: bottomTextStyle,
            textAlign: TextAlign.center,
          ),
          _padding,
        ],
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    AuthService service,
    Widget? child,
  ) {
    return switch (service.state) {
      == AuthService.notLoggedState => _buildLogin(service, context),
      == AuthService.waitingState => _buildWaiting(context),
      Failed failed => _buildFailed(service, failed, context),
      _ => throw StateError("Unexpected AuthService state!")
    };
  }

  Widget _buildLogin(AuthService service, BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final labelStyle = _labelStyle(textTheme, colorScheme);

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (final provider in AuthProvider.values)
            _loginButton(service, provider, context, colorScheme, labelStyle)
        ].interpolate(const SizedBox(height: 10)),
      ),
    );
  }

  TextStyle _labelStyle(TextTheme textTheme, ColorScheme colorScheme) =>
      textTheme.labelLarge!.copyWith(color: colorScheme.onPrimary);

  Widget _buildWaiting(BuildContext context) {
    final colorScheme = context.colorScheme;
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
          "Authenticating...",
          style: textStyle,
        )
      ],
    );
  }

  Widget _buildFailed(
      AuthService service, Failed failed, BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final style = textTheme.titleLarge!.copyWith(
      color: colorScheme.onSurface,
    );
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
              Text(
                failed.message,
                style: style,
              ),
            ],
          ),
        ),
        _padding,
        _filledButton(
          onPressed: () => service.reset(),
          child: Text(
            "Let's try again!",
            style: _labelStyle(textTheme, colorScheme),
          ),
        )
      ],
    );
  }

  Widget _loginButton(AuthService service, AuthProvider provider,
      BuildContext context, ColorScheme colorScheme, TextStyle textStyle) {
    return _filledButton(
      onPressed: () => service(provider),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            color: colorScheme.surface,
            child: SvgPicture.asset(
              "images/${provider.id}-logo.svg",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Login with ${provider.title}",
              style: textStyle,
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