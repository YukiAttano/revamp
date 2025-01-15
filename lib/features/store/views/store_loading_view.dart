
import "package:flutter/material.dart";

import "../../../../shared/ui/widgets/views/generic_loading_view.dart";

class StoreLoadingView extends StatelessWidget {

  final Widget? title;

  const StoreLoadingView({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return GenericLoadingView.adaptive(title: title);
  }
}
