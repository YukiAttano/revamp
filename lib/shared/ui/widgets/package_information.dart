import "package:flutter/material.dart";
import "package:package_info_plus/package_info_plus.dart";

class PackageInformation extends FutureBuilder<PackageInfo> {
  PackageInformation({
    super.key,
    required super.builder,
  }) : super(future: _infoFuture);

  static final Future<PackageInfo> _infoFuture = PackageInfo.fromPlatform();
}
