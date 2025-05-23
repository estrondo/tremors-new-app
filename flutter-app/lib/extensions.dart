import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tremors/l10n.dart';
import 'package:tremors/models/general.dart';

extension BuildContextPlus on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  TextTheme get textTheme => Theme.of(this).textTheme;

  void delayedGo(String path) {
    Timer(Duration.zero, () => go(path));
  }

  AppLocalizations get l10n => AppLocalizations.of(this)!;

  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension TextStylePlus on TextStyle? {
  TextStyle? operator <<(Color color) => this?.copyWith(color: color);
}

extension ListWidget on List<Widget> {
  List<Widget> interpolate(Widget widget) {
    final iterator = this.iterator;
    final result = <Widget>[];
    var hasNext = iterator.moveNext();

    while (hasNext) {
      result.add(iterator.current);
      hasNext = iterator.moveNext();
      if (hasNext) {
        result.add(widget);
      }
    }

    return result;
  }
}

extension AppLocalizationsPlus on AppLocalizations {
  String call(LocalisedMessage messages) {
    final message = messages[localeName];
    return message ?? messages["em"] ?? localeName;
  }
}
