import 'package:flutter/material.dart';
import 'package:tremors/extensions.dart';
import 'package:tremors/tremors_icons.dart';

class Input extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final String? tooltip;
  final double? height;
  final double? width;
  final Widget sample;

  Input({
    super.key,
    required this.onPressed,
    required this.label,
    required this.sample,
    this.tooltip,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          alignment: Alignment.centerLeft,
          side: WidgetStatePropertyAll(
            BorderSide(
              color: colorScheme.onSurface,
              width: 1,
            ),
          ),
          shape: WidgetStatePropertyAll(
            LinearBorder.bottom(
              side: BorderSide(
                color: colorScheme.error,
              ),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: textTheme.labelLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                sample
              ],
            ),
            Icon(
              TremorsIcons.forwardArrow,
              color: colorScheme.onSurface,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
