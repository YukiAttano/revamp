
import "package:flutter/material.dart";

import "../../../shared/ui/widgets/version_info.dart";
import "settings_list.dart";

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  static const EdgeInsets _versionPadding = EdgeInsets.all(8);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Expanded(
          child: SettingsList(),
        ),
        Center(
          child: Padding(
            padding: _versionPadding,
            child: VersionInfo(),
          ),
        ),
      ],
    );
  }
}
