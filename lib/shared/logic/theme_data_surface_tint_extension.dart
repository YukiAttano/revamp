
import "package:flutter/material.dart";

extension ThemeDataSurfaceTintExtension on ThemeData {

  /// Calculates the surfaceTint color for [Material.elevation].
  ///
  /// [color] and [elevation] will fallback to the documented [Card] behaviour.
  ///
  /// As the a [lerp] method cannot lerp from or to null but decides to pick the non-null value instantly, changing the values
  /// of [Card.color] and [Card.surfaceTintColor] can result in visual flickering.
  ///
  /// Example
  /// ```dart
  /// Card(
  ///   color: Colors.red,
  ///   surfaceTintColor: null,
  /// );
  ///
  /// // to
  ///
  /// Card(
  ///   color: null,
  ///   surfaceTintColor: Colors.blue,
  /// );
  /// ```
  ///
  /// to avoid this, this function calculates the result of the effective surfaceTintColor which can than be passed
  /// to the color property and therefor allows the lerp to be smooth
  Color applyCardSurfaceTint({Color? color, required Color surfaceTint, double? elevation}) {

    // defined based on [Card.color] description
    Color fallbackColor = useMaterial3 ? colorScheme.surfaceContainerLow : cardColor;
    Color c = color ?? cardTheme.color ?? fallbackColor;
    double e = elevation ?? cardTheme.elevation ?? 1;

    return ElevationOverlay.applySurfaceTint(c, surfaceTint, e);
  }


}
