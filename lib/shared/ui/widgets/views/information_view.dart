import "package:flutter/material.dart";
import "package:ux_improvements/ux_improvements.dart";

import "../inherited_list_padding.dart";
import "../layout/screen_view.dart";

class InformationView extends StatelessWidget {
  final Widget title;
  final Widget child;
  final bool _hasTitle;
  final bool showLoading;
  final RefreshCallback? onRefresh;

  const InformationView({super.key, Widget? title, required this.child, this.showLoading = false, this.onRefresh})
      : title = title ?? const SizedBox.shrink(),
        _hasTitle = title != null;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    //ColorScheme scheme = theme.colorScheme;
    TextTheme textTheme = theme.textTheme;

    DefaultTextStyle defaultStyle = DefaultTextStyle.of(context);

    TextStyle textStyle = defaultStyle.style.merge(textTheme.bodyLarge);

    return ScreenView(
      showAppBar: _hasTitle,
      viewPaddingAsListPadding: true,
      title: Visibility(child: title),
      child: Column(
        children: [
          FakeloadingWidget.reserve(
            loading: showLoading,
            replacement: const LinearProgressIndicator(),
          ),
          Expanded(
            child: Builder(
              builder: (context) {
                return AdaptiveRefreshIndicator.fill(
                  padding: InheritedListPadding.of(context),
                  onRefresh: onRefresh,
                  child: Center(
                    child: DefaultTextStyle(
                      style: textStyle,
                      child: child,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
