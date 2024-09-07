import 'package:flutter/material.dart';

class SpacedColumn extends Column {
  SpacedColumn({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    required List<Widget> children,
    double spacing = 8,
  }) : super(
          children: children
              .map(
                (child) => [
                  child,
                  if (children.last != child) SizedBox(height: spacing),
                ],
              )
              .expand((List<Widget> spacedChild) => spacedChild)
              .toList(),
        );
}
