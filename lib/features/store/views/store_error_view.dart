import "package:flutter/material.dart";

import "../../../../shared/ui/widgets/views/generic_info_view.dart";

class StoreErrorView extends StatelessWidget {
  final Widget? title;
  final Object? exception;
  final bool? showLoading;
  final RefreshCallback? onRefresh;
  final void Function()? onPressed;

  const StoreErrorView({super.key, this.title, this.exception, this.showLoading, this.onRefresh, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GenericInfoView.error(
      title: title,
      showLoading: showLoading,
      exception: exception,
      onRefresh: onRefresh,
      onPressedException: onPressed,
    );
  }
}
