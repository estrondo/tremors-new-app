import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

extension WidgetTesterPlus on WidgetTester {
  Future<void> pumpWidgetWithApp(Widget widget) {
    return pumpWidget(MaterialApp(
      home: widget,
    ));
  }
}

final _random = Random();

extension ListWithTestPlus<T> on List<T> {
  T pickUpRandomly() {
    return this[_random.nextInt(length)];
  }
}
