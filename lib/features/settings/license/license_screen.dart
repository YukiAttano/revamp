import "package:flutter/material.dart";
import "package:package_info_plus/package_info_plus.dart";

import "../../../shared/ui/widgets/package_information.dart";

class LicenseScreen extends StatelessWidget {
  const LicenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PackageInformation(
      builder: (context, snapshot) {
        PackageInfo? info = snapshot.data;

        return LicensePage(
          applicationName: info?.appName,
          applicationVersion: info?.version,
          applicationLegalese: "Copyright by YukiAttano",
        );
      },
    );
  }
}
