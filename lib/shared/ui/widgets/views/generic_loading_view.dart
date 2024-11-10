import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

import "../layout/screen_view.dart";

class GenericLoadingView extends StatelessWidget {
  final Widget? title;
  final Widget _loading;

  const GenericLoadingView._({super.key, this.title, Widget? loading})
      : _loading = loading ?? const CircularProgressIndicator();

  const GenericLoadingView({Key? key, Widget? title}) : this._(key: key, title: title);

  const GenericLoadingView.adaptive({Key? key, Widget? title})
      : this._(key: key, title: title, loading: const _AdaptiveBuilder());

  @override
  Widget build(BuildContext context) {
    return ScreenView(
      title: title,
      child: Center(child: _loading),
    );
  }
}

class _AdaptiveBuilder extends StatelessWidget {
  const _AdaptiveBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    TargetPlatform platform = Theme.of(context).platform;

    switch (platform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return const CupertinoActivityIndicator();

      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.windows:
      case TargetPlatform.linux:
        return const CircularProgressIndicator();
    }
  }
}
