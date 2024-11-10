import "package:flutter/material.dart";
import "package:package_info_plus/package_info_plus.dart";
import "package_information.dart";

class VersionInfo extends StatelessWidget {
  const VersionInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return PackageInformation(builder: (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {

      String appName = "";
      String version = "";
      String buildNumber = "";

      String infoText = "";

      PackageInfo? info = snapshot.data;

      if (info != null)
      {
        appName = info.appName;
        version = info.version;
        buildNumber = info.buildNumber;

        infoText = "$appName $version ($buildNumber)";
      }

      return Text(infoText);
    },);
  }
}
