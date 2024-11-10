import "package:flutter/material.dart";

class EndlessListView extends CustomScrollView {
  EndlessListView.builder({
    super.key,
    super.scrollDirection,
    super.reverse,
    super.controller,
    super.primary,
    super.physics,
    super.scrollBehavior,
    super.shrinkWrap,
    super.anchor,
    super.cacheExtent,
    super.semanticChildCount,
    super.dragStartBehavior,
    super.keyboardDismissBehavior,
    super.restorationId,
    super.clipBehavior,
    ChildIndexGetter? findChildIndexCallback,
    int? negativeCount,
    int? positiveCount,
    required NullableIndexedWidgetBuilder itemBuilder,
  }) : super(
          center: const Key("positive"),
          slivers: [
            SliverList.builder(
              key: const Key("negative"),
              itemCount: negativeCount,
              itemBuilder: (context, index) => itemBuilder(context, -(index +1)),
              findChildIndexCallback: findChildIndexCallback != null
                  ? (key) => _negativeFindChildIndexCallback(key, findChildIndexCallback)
                  : null,
            ),
            SliverList.builder(
              key: const Key("positive"),
              itemCount: positiveCount,
              itemBuilder: itemBuilder,
              findChildIndexCallback: findChildIndexCallback,
            ),
          ],
        );

  static int? _negativeFindChildIndexCallback(Key key, ChildIndexGetter getter) {
    int? index = getter(key);
    return index != null ? -index : index;
  }
}
