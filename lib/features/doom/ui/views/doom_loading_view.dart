
import "package:flutter/material.dart";

import "../../../../shared/ui/widgets/views/generic_loading_view.dart";

class DoomLoadingView extends StatelessWidget {

  final Widget? title;

  const DoomLoadingView({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return GenericLoadingView.adaptive(title: title);
  }
}
