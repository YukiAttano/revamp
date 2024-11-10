import "package:flutter/widgets.dart";

const PageScrollPhysics _kPagePhysics = PageScrollPhysics();

/// copied from [_PageViewState.build]
///
/// see [ScrollPhysics.allowImplicitScrolling]
ScrollPhysics getPagePhysics({
  required BuildContext context,
  bool allowImplicitScrolling = false,
  bool pageSnapping = true,
  ScrollPhysics? physics,
  ScrollBehavior? scrollBehavior,
}) {
  return _ForceImplicitScrollPhysics(
    allowImplicitScrolling: allowImplicitScrolling,
  ).applyTo(
    pageSnapping
        ? _kPagePhysics.applyTo(physics ?? scrollBehavior?.getScrollPhysics(context))
        : physics ?? scrollBehavior?.getScrollPhysics(context),
  );
}

class _ForceImplicitScrollPhysics extends ScrollPhysics {
  const _ForceImplicitScrollPhysics({
    required this.allowImplicitScrolling,
    super.parent,
  });

  @override
  _ForceImplicitScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return _ForceImplicitScrollPhysics(
      allowImplicitScrolling: allowImplicitScrolling,
      parent: buildParent(ancestor),
    );
  }

  @override
  final bool allowImplicitScrolling;
}
