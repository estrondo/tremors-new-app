import 'dart:async';

import 'package:flutter/material.dart';

enum MomentStrategy {
  System,
  Fixed,
  Incremental;
}

class Moment extends ChangeNotifier {
  final _stopwatch = Stopwatch();
  MomentStrategy _strategy = MomentStrategy.System;
  late DateTime _current;

  DateTime get current => _current;

  Moment() {
    _stopwatch.start();
    _current = DateTime.now();
    Timer.periodic(const Duration(seconds: 1), _update);
  }

  factory Moment.create(BuildContext context) {
    return Moment();
  }

  void changeStrategy(MomentStrategy strategy) {
    _strategy = strategy;
  }

  void _update(Timer timer) {
    _current = switch (_strategy) {
      MomentStrategy.System => DateTime.now(),
      MomentStrategy.Incremental => _current.add(_stopwatch.elapsed),
      MomentStrategy.Fixed => _current,
    };

    notifyListeners();
  }
}
