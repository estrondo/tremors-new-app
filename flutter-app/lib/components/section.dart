import 'package:flutter/material.dart';
import 'package:tremors/extensions.dart';

class TremorsSection extends StatelessWidget {
  final String title;
  final Widget child;

  const TremorsSection({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textTheme.headlineSmall,
        ),
        Expanded(
          child: child,
        ),
      ],
    );
  }
}
