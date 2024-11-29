import 'package:flutter/material.dart';

extension BuildContextPlus on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  TextTheme get textTheme => Theme.of(this).textTheme;
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