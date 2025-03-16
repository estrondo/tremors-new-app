import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:provider/provider.dart';
import 'package:tremors/components/moment_display.dart';
import 'package:tremors/extensions.dart';
import 'package:tremors/map/map_manager.dart';
import 'package:tremors/models/value_state.dart';
import 'package:tremors/tremors_icons.dart';

const _spacer = SizedBox(width: 5);

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTopBar(context),
        Expanded(
          child: Selector<MapManager, LayerList>(
            selector: (_, mapManager) => mapManager.layerList,
            builder: _build,
          ),
        ),
      ],
    );
  }

  Widget _build(BuildContext ctx, LayerList layerList, Widget? _) {
    return switch (layerList) {
      SuccessState<String, List<Widget>>(value: final x) => _buildMap(ctx, x),
      LoadingState<String, List<Widget>>() => _buildLoading(ctx),
      FailedState<String, List<Widget>>() => _buildError(ctx),
      Undefined<String, List<Widget>>() => _buildLoading(ctx),
    };
  }

  Widget _coloredBox(BuildContext context, Widget child) => ColoredBox(
        color: context.colorScheme.surface,
        child: Center(
          child: child,
        ),
      );

  Widget _buildLoading(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = context.textTheme;
    context.read<MapManager>().load();
    return _coloredBox(
      context,
      Column(
        children: [
          const Expanded(
            flex: 1,
            child: LoadingIndicator(
              indicatorType: Indicator.ballScaleMultiple,
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                l10n.mainMapLoading,
                style: textTheme.bodySmall,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = context.textTheme;
    return SizedBox(
      height: 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                print("Moment");
              },
              child: const Row(
                children: [
                  Icon(
                    TremorsIcons.time,
                    size: 20,
                  ),
                  _spacer,
                  MomentDisplay()
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                print("+Info");
              },
              child: Row(
                children: [
                  const Icon(
                    TremorsIcons.histogram,
                    size: 20,
                  ),
                  Text(
                    l10n.mapPlusInfoLabel,
                    style: textTheme.bodyMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildError(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = context.textTheme;
    final colorScheme = context.colorScheme;
    return Center(
      child: Text(
        l10n.mainMapError,
        textAlign: TextAlign.center,
        style: textTheme.bodyMedium!.copyWith(
          color: colorScheme.onSurface,
        ),
      ),
    );
  }

  Widget _buildMap(BuildContext context, List<Widget> children) {
    final mapManager = context.read<MapManager>();
    return FlutterMap(
      mapController: mapManager.mapController,
      options: MapOptions(onMapReady: mapManager.ready),
      children: children,
    );
  }
}
