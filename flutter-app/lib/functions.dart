import 'package:flutter/material.dart';
import 'package:tremors/extensions.dart';

List<Widget> horizontallySpaced(List<Widget> widgets) {
  return widgets.interpolate(
    const SizedBox(
      height: 10,
    ),
  );
}
