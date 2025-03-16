import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tremors/components/section.dart';
import 'package:tremors/extensions.dart';
import 'package:tremors/map/map_manager.dart';
import 'package:tremors/models/mapping.dart';
import 'package:tremors/tremors_panel.dart';

const _mapTypeItemWidth = 110.0;

const _iconWidth = 40.0;
const _iconHeight = 40.0;

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
              child: Selector<MapManager, List<MapTypeState>>(
                selector: (_, mapManager) => mapManager.mapTypes,
                builder: _buildMapTypeList,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: TremorsSection(
              title: l10n.layersInformationSectionTitle,
              child: Selector<MapManager, List<MapInfoState>>(
                selector: (_, mapManager) => mapManager.mapInfo,
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
    List<MapTypeState> mapType,
    Widget? child,
  ) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final l10n = context.l10n;

    Widget buildItem(MapTypeState mapType) => SizedBox(
          width: _mapTypeItemWidth,
          child: Tooltip(
            message: l10n(mapType.description),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildMapItemButton(
                  mapType.active,
                  colorScheme,
                  mapType.activate,
                  mapType.icon,
                ),
                Text(
                  l10n(mapType.title),
                  style: textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        );

    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        for (final mapType in mapType) buildItem(mapType),
      ].interpolate(const SizedBox(width: 10)),
    );
  }

  Widget _buildMapInfoGrid(
    BuildContext context,
    List<MapInfoState> mapInfo,
    Widget? child,
  ) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final l10n = context.l10n;

    Widget buildItem(MapInfoState mapInfo) {
      return Tooltip(
        message: l10n(mapInfo.description),
        child: Column(
          children: [
            _buildMapItemButton(
              mapInfo.active,
              colorScheme,
              mapInfo.toggle,
              mapInfo.icon,
            ),
            Text(
              l10n(mapInfo.title),
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium,
            ),
          ],
        ),
      );
    }

    return GridView.count(
      crossAxisCount: 3,
      children: [
        for (final mapInfo in mapInfo) buildItem(mapInfo),
      ],
    );
  }

  Widget _buildMapItemButton(
    bool active,
    ColorScheme colorScheme,
    void Function() onTap,
    Uint8List icon,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: active ? colorScheme.primary : colorScheme.outlineVariant,
          ),
        ),
        child: Image.memory(
          icon,
          height: _iconHeight,
          width: _iconWidth,
        ),
      ),
    );
  }
}
