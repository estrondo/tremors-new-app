import 'package:flutter/material.dart';
import 'package:tremors/extensions.dart';

class TremorsSection extends StatelessWidget {
  final String title;
  final Widget child;
  final Alignment? titleAlignment;

  const TremorsSection(
      {super.key,
      required this.title,
      required this.child,
      this.titleAlignment});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Column(
      children: [
        Align(
          alignment: titleAlignment ?? Alignment.centerLeft,
          child: Text(
            title,
            style: textTheme.headlineSmall,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Expanded(
          child: child,
        ),
      ],
    );
  }
}
