import "package:flutter/material.dart";

class ExpandedListView extends CustomScrollView {
  ExpandedListView({
    super.key,
    super.scrollDirection,
    super.reverse,
    super.controller,
    super.primary,
    super.physics,
    super.scrollBehavior,
    super.shrinkWrap,
    super.center,
    super.anchor,
    super.cacheExtent,
    super.semanticChildCount,
    super.dragStartBehavior,
    super.keyboardDismissBehavior,
    super.restorationId,
    super.clipBehavior,
    EdgeInsets? padding,
    bool fillOverscroll = false,
    bool hasScrollBody = true,
    required Widget child,
  }) : super(
          slivers: [
            SliverPadding(
              padding: padding ?? EdgeInsets.zero,
              sliver: SliverFillRemaining(
                fillOverscroll: fillOverscroll,
                hasScrollBody: hasScrollBody,
                child: child,
              ),
            ),
          ],
        );
}
