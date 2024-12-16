import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tremors/extensions.dart';
import 'package:tremors/managers/moment.dart';

String _twoDigits(int value) => switch (value) {
      > 9 => "$value",
      < -9 => "$value",
      < 0 => "-0${0 - value}",
      _ => "0$value",
    };

String _fourDigits(int value) => switch (value) {
      > 999 => "$value",
      > 99 => "00$value",
      > 9 => "000$value",
      _ => "E$value",
    };

String _signedTwoDigits(int value) =>
    value >= 0 ? "+${_twoDigits(value)}" : _twoDigits(value);

class MomentDisplay extends StatelessWidget {
  const MomentDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Moment>(builder: _build);
  }

  Widget _build(BuildContext context, Moment moment, Widget? child) {
    final textTheme = context.textTheme;
    final c = moment.current;
    return Text(
      "${_fourDigits(c.year)}-${_twoDigits(c.month)}-${_twoDigits(c.day)} ${_twoDigits(c.hour)}:${_twoDigits(c.minute)} UTC${_signedTwoDigits(c.timeZoneOffset.inHours)}",
      style: textTheme.bodyMedium,
    );
  }
}
