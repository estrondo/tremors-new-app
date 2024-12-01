import 'package:flutter/material.dart';
import 'package:flutter_sliding_box/flutter_sliding_box.dart';
import 'package:go_router/go_router.dart';
import 'package:tremors/extensions.dart';
import 'package:tremors/tremors_icons.dart';

const _paddingValue = 5.0;

class TremorsSinglePanel extends StatelessWidget {
  final String title;
  final Widget child;

  const TremorsSinglePanel({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: _paddingValue,
        right: _paddingValue,
      ),
      child: Column(
        children: [
          _panelTitle(title, context),
          Expanded(child: child),
        ],
      ),
    );
  }
}

class TremorsDualPanel extends StatelessWidget {
  final String title;
  final Widget top;
  final Widget? bottom;
  final Widget Function(ScrollController, double)? bottomBuilder;

  static const _borderRadius = BorderRadius.only(
    topLeft: Radius.circular(10),
    topRight: Radius.circular(10),
  );

  const TremorsDualPanel({
    super.key,
    required this.title,
    required this.top,
    this.bottom,
    this.bottomBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: _paddingValue,
            right: _paddingValue,
          ),
          child: _panelTitle(title, context),
        ),
        Expanded(
          child: ClipRect(
            child: LayoutBuilder(builder: _buildSlidingBox),
          ),
        )
      ],
    );
  }

  Widget _buildSlidingBox(BuildContext context, BoxConstraints constraints) {
    final colorScheme = context.colorScheme;
    final maxHeight = constraints.maxHeight * 0.7;

    Widget Function(ScrollController, double)? bodyBuilder;
    Widget? body;

    if (bottomBuilder != null) {
      bodyBuilder = (controller, position) => SizedBox(
            width: constraints.maxWidth,
            height: maxHeight,
            child: _padding(
              bottomBuilder!(controller, position),
            ),
          );
    }

    if (bottom != null) {
      body = SizedBox(
        width: constraints.maxWidth,
        height: maxHeight,
        child: _padding(bottom!),
      );
    }

    return SlidingBox(
      bodyBuilder: bodyBuilder,
      body: body,
      color: colorScheme.surface,
      draggableIconBackColor: colorScheme.surface,
      draggableIconColor: colorScheme.outline,
      minHeight: 30,
      maxHeight: maxHeight + 30,
      collapsed: true,
      borderRadius: _borderRadius,
      style: BoxStyle.shadow,
      collapsedBody: const ColoredBox(color: Colors.pinkAccent),
      backdrop: Backdrop(
        body: Padding(
          padding: const EdgeInsets.only(
            left: _paddingValue,
            right: _paddingValue,
          ),
          child: top,
        ),
      ),
    );
  }
}

Widget _padding(Widget child) {
  return Padding(
    padding: const EdgeInsets.all(_paddingValue),
    child: child,
  );
}

Widget _panelTitle(String title, BuildContext context) {
  final colorScheme = context.colorScheme;
  final l10n = context.l10n;
  final textTheme = context.textTheme;

  return DecoratedBox(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: colorScheme.outline, width: 1),
      ),
    ),
    child: SizedBox(
      height: 40,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => context.go("/"),
            icon: Icon(
              TremorsIcons.backArrow,
              size: 20,
              color: colorScheme.onSurface,
            ),
            tooltip: l10n.panelBackTooltip,
          ),
          Text(
            title,
            style: textTheme.headlineLarge,
          )
        ],
      ),
    ),
  );
}
