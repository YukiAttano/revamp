import "package:flutter/material.dart";

import "../../../../shared/ui/widgets/views/generic_info_view.dart";

class StoreEmptyView extends StatelessWidget {
  final Widget? title;
  final Object? exception;
  final bool? showLoading;
  final RefreshCallback? onRefresh;
  final void Function()? onPressed;

  const StoreEmptyView({super.key, this.title, this.exception, this.showLoading, this.onRefresh, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GenericInfoView(
      title: title,
      showLoading: showLoading,
      onRefresh: onRefresh,
      onPressedInfo: onPressed,
      // TODO(Alex): translate
      child: Text("Keine Daten vorhanden, bitte versuche es später erneut"),
    );
  }
}
