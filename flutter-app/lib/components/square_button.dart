import 'package:flutter/material.dart';
import 'package:tremors/extensions.dart';

typedef _ColorFunction = Color Function(ColorScheme);

final _ColorFunction _usePrimaryColor = (colorScheme) => colorScheme.primary;

final _ColorFunction _useOnPrimaryColor = (colorScheme) => colorScheme.onPrimary;

class SquaredButton extends StatelessWidget {
  final Widget child;
  final void Function() onPressed;

  late final _ColorFunction _backgroundColor;

  SquaredButton.primary({
    super.key,
    required this.onPressed,
    required this.child,
  }) {
    _backgroundColor = _usePrimaryColor;
  }

  SquaredButton.secondary({
    super.key,
    required this.onPressed,
    required this.child,
}) {
    _backgroundColor = _useOnPrimaryColor;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;

    return FilledButton(
      style: ButtonStyle(
        shape: const WidgetStatePropertyAll(LinearBorder.none),
        backgroundColor: WidgetStatePropertyAll(_backgroundColor(colorScheme)),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
