import "package:flutter/material.dart";
import "package:sliver_tools/sliver_tools.dart";

class TitledListView extends ListView {
  TitledListView.builder({
    super.key,
    super.scrollDirection,
    super.reverse,
    super.controller,
    super.primary,
    super.physics,
    super.shrinkWrap,
    super.padding,
    super.itemExtent,
    super.prototypeItem,
    super.itemExtentBuilder,
    super.cacheExtent,
    super.semanticChildCount,
    super.dragStartBehavior,
    super.keyboardDismissBehavior,
    super.restorationId,
    super.clipBehavior,
    ChildIndexGetter? findChildIndexCallback,
    bool? addAutomaticKeepAlives,
    bool? addRepaintBoundaries,
    bool? addSemanticIndexes,
    int? itemCount,
    required IndexedWidgetBuilder titleBuilder,
    required NullableIndexedWidgetBuilder childBuilder,
  }) : super.custom(
          childrenDelegate: delegate(
            itemCount: itemCount,
            titleBuilder: titleBuilder,
            childBuilder: childBuilder,
            findChildIndexCallback: findChildIndexCallback,
            addAutomaticKeepAlives: addAutomaticKeepAlives ?? true,
            addRepaintBoundaries: addRepaintBoundaries ?? true,
            addSemanticIndexes: addSemanticIndexes ?? true,
          ),
        );

  static SliverChildBuilderDelegate delegate({
    int? itemCount,
    required IndexedWidgetBuilder titleBuilder,
    required NullableIndexedWidgetBuilder childBuilder,
    ChildIndexGetter? findChildIndexCallback,
    bool? addAutomaticKeepAlives,
    bool? addRepaintBoundaries,
    bool? addSemanticIndexes,
  }) {
    return SliverChildBuilderDelegate(
      childCount: _computeActualChildCount(itemCount),
      (BuildContext context, int index) {
        int itemIndex = index ~/ 2;
        if (index.isEven) {
          return titleBuilder(context, itemIndex);
        }
        return childBuilder(context, itemIndex);
      },
      findChildIndexCallback: findChildIndexCallback,
      addAutomaticKeepAlives: addAutomaticKeepAlives ?? true,
      addRepaintBoundaries: addRepaintBoundaries ?? true,
      addSemanticIndexes: addSemanticIndexes ?? true,
    );
  }

  static int? _computeActualChildCount(int? itemCount) {
    if (itemCount == null) return null;

    return itemCount * 2;
  }
}

class TitledListViewSliver extends CustomScrollView {

  /// Creates a sliver with a [buildTitleSliver] followed by [buildSliver]s
  ///
  /// Essentially the opposite of a [SliverList.separated]
  ///
  /// [customSliverBuilder] wraps the result of [buildTitleSliver] and [buildSliver] to allow the usage of more sliver like [SliverPadding] and [DecoratedSliver]
  TitledListViewSliver({
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
    Widget Function(int index, Widget sliver)? customSliverBuilder,
    required int itemCount,
    Widget? leadingSliver,
    required Widget Function(int index) buildTitleSliver,
    required Widget Function(int index) buildSliver,
  }) : super(
          slivers: buildSliverList(
            builder: customSliverBuilder ?? _builder,
            itemCount: itemCount,
            leadingSliver: leadingSliver,
            buildTitleSliver: buildTitleSliver,
            buildSliver: buildSliver,
          ),
        );

  static List<Widget> buildSliverList({
    Widget Function(int index, Widget sliver) builder = _builder,
    required int itemCount,
    Widget? leadingSliver,
    required Widget Function(int index) buildTitleSliver,
    required Widget Function(int index) buildSliver,
  }) {
    return [
      // building a leading widget prevents a visual bug if multiple title exist and the user scrolls too far down with ios scroll logic.
      // it also allows the first title to scroll down and visually stay with its sliver instead of being separated from it.
      leadingSliver ?? const SliverToBoxAdapter(),
      ...List.generate(
        itemCount,
        (index) {
          return builder(
            index,
            MultiSliver(
              pushPinnedChildren: true,
              children: [
                buildTitleSliver(index),
                buildSliver(index),
              ],
            ),
          );
        },
      ),
    ];
  }

  static Widget _builder(int index, Widget sliver) => sliver;
}
