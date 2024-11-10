import "package:flutter/material.dart";

import "../localized.dart";
import "../styles/information_card_style.dart";
import "../templates/information_card.dart";
import "information_view.dart";

class GenericInfoView extends StatelessWidget {
  final Widget child;
  final bool showLoading;
  final RefreshCallback? onRefresh;
  final Widget? title;
  final InformationCardStyle? style;
  final void Function()? onInfoPressed;


  const GenericInfoView._({super.key, bool? showLoading, this.onRefresh, this.title, this.onInfoPressed, this.style, required this.child}) : showLoading = showLoading ?? false;

  GenericInfoView({Key? key, bool? showLoading, RefreshCallback? onRefresh, Widget? title, void Function()? onPressedInfo, required Widget child}) : this._(
    key: key,
    title: title,
    onRefresh: onRefresh,
    showLoading: showLoading,
    child: Builder(
      builder: (context) {
        return InformationCard(
          onTap: onPressedInfo,
          child: child,
        );
      },
    ),
  );

  GenericInfoView.error({Key? key, Object? exception, bool? showLoading, RefreshCallback? onRefresh, Widget? title, void Function()? onPressedException}) : this._(
    key: key,
    title: title,
    onRefresh: onRefresh,
    showLoading: showLoading,
    child: Builder(
      builder: (context) {
        return InformationCard(
          onTap: onPressedException,
          style: InformationCardStyle.error(context),
          child: Localized.exception(exception),
        );
      },
    ),
  );


  @override
  Widget build(BuildContext context) {
    return InformationView(
      showLoading: showLoading,
      onRefresh: onRefresh,
      title: title,
      child: child,
    );
  }
}
