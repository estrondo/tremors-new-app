import 'package:flutter/material.dart';

class SizedBoxWrapper extends StatelessWidget {
  final Widget child;

  const SizedBoxWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: _build);
  }

  Widget _build(BuildContext context, BoxConstraints constraints) {
    return SizedBox(
      width: constraints.maxWidth,
      height: constraints.maxHeight,
      child: child,
    );
  }
}
