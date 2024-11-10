import "package:flutter/cupertino.dart" hide RefreshCallback;
import "package:flutter/material.dart";

class FillViewScrollView extends StatelessWidget {
  final EdgeInsets padding;
  final Widget child;
  final bool hasScrollBody;
  final bool fillOverscroll;
  final ScrollPhysics? physics;
  final RefreshCallback onRefresh;

  final bool _enableRefreshIndicator;

  const FillViewScrollView({
    super.key,
    EdgeInsets? padding,
    required this.child,
    this.hasScrollBody = true,
    this.fillOverscroll = false,
    this.physics,
    RefreshCallback? onRefresh,
  })  : padding = padding ?? EdgeInsets.zero,
        onRefresh = onRefresh ?? _emptyRefreshCallback,
        _enableRefreshIndicator = onRefresh != null;

  @override
  Widget build(BuildContext context) {
    TargetPlatform platform = Theme.of(context).platform;
    bool useMaterialIndicator = platform != TargetPlatform.iOS && platform != TargetPlatform.macOS;

    return RefreshIndicator(
      onRefresh: onRefresh,
      notificationPredicate: (n) => _enableRefreshIndicator && useMaterialIndicator && n.depth == 0,
      child: CustomScrollView(
        physics: physics,
        slivers: [
          SliverVisibility(
            visible: _enableRefreshIndicator && !useMaterialIndicator,
            sliver: SliverPadding(
              padding: padding,
              sliver: CupertinoSliverRefreshControl(
                onRefresh: onRefresh,
              ),
            ),
          ),
          SliverPadding(
            padding: padding,
            sliver: SliverFillRemaining(
              hasScrollBody: hasScrollBody,
              fillOverscroll: fillOverscroll,
              child: child,
            ),
          ),
        ],
      ),
    );
  }

  static Future<void> _emptyRefreshCallback() => Future.value();
}
