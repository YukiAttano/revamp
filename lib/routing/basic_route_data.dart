import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../shared/logic/localizable.dart";



abstract class BasicRouteData extends GoRouteData {

  /// redirect to 'location'
  ///
  /// location is code generated as extension method on the specified class
  String get loc;
  const BasicRouteData();
}

/// Gives basic customization for routes
abstract class UiRouteData extends GoRouteData implements Localizable<String> {
  IconData get icon;

  // /// This might not be correctly localized, be sure you have loaded the correct localization
  //String get label => localize(S.current);

  /// redirect to 'location'
  ///
  /// location is code generated as extension method on the specified class
  String get loc;
  const UiRouteData();
}
