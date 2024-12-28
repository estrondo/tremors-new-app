import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tremors/components/section.dart';
import 'package:tremors/extensions.dart';
import 'package:tremors/map/map_manager.dart';
import 'package:tremors/tremors_panel.dart';

const _itemWidth = 100.0;

const _iconHeight = 40.0;
const _iconWidth = 40.0;

class LayersPage extends StatelessWidget {
  const LayersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return TremorsSinglePanel(
      title: l10n.layersPanelTitle,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: TremorsSection(
              title: l10n.layersMapSectionTitle,
              child: Consumer<MapManager>(builder: _buildMapTypeList),
            ),
          ),
          Expanded(
            flex: 5,
            child: TremorsSection(
              title: l10n.layersInformationSectionTitle,
              child: Consumer<MapManager>(
                builder: _buildMapInfoGrid,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMapTypeList(
    BuildContext context,
    MapManager mapManager,
    Widget? child,
  ) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    Widget build(MapType mapType) => Padding(
          padding: const EdgeInsets.all(5),
          child: Tooltip(
            message: mapType.description,
            child: Column(
              key: ValueKey(mapType.id),
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _isActive(
                  mapType.active,
                  colorScheme,
                  SizedBox(
                    width: _iconWidth,
                    height: _iconHeight,
                    child: ColoredBox(color: colorScheme.error),
                  ),
                ),
                Text(
                  mapType.title,
                  style: textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        );

    return ListView(
      scrollDirection: Axis.horizontal,
      itemExtent: _itemWidth,
      children: [
        for (final mapType in mapManager.mapTypes) build(mapType),
      ],
    );
  }

  Widget _buildMapInfoGrid(
    BuildContext context,
    MapManager mapManager,
    Widget? child,
  ) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    Widget build(MapInfo mapInfo) {
      return Tooltip(
        message: mapInfo.description,
        child: Column(
          children: [
            _isActive(
              mapInfo.active,
              colorScheme,
              SizedBox(
                width: _iconWidth,
                height: _iconHeight,
                child: ColoredBox(
                  color: colorScheme.onPrimary,
                ),
              ),
            ),
            Text(
              mapInfo.title,
              style: textTheme.bodyMedium,
            ),
          ],
        ),
      );
    }

    return GridView.count(
      crossAxisCount: 4,
      children: [
        for (final mapInfo in mapManager.mapInfo) build(mapInfo),
      ],
    );
  }

  Widget _isActive(bool active, ColorScheme colorScheme, Widget child) {
    return !active
        ? child
        : DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: colorScheme.primary, width: 4),
            ),
            position: DecorationPosition.foreground,
            child: child,
          );
  }
}
