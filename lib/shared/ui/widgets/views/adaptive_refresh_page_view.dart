import "package:flutter/material.dart";
import "package:sliver_tools/sliver_tools.dart";
import "package:ux_improvements/ux_improvements.dart";

import "../../../logic/page_physics.dart";
import "../layout/titled_list_view.dart";

class AdaptiveRefreshPageView extends StatelessWidget {
  final PageController? controller;
  final ScrollPhysics? physics;
  final bool pageSnapping;
  final RefreshCallback? onRefresh;
  final Widget _sliver;

  AdaptiveRefreshPageView.builder({
    super.key,
    this.controller,
    this.physics,
    this.pageSnapping = true,
    this.onRefresh,
    required int? itemCount,
    required NullableIndexedWidgetBuilder builder,
  }) : _sliver = _SliverEndlessPages(itemCount: itemCount, builder: builder);

  AdaptiveRefreshPageView.titled({
    super.key,
    this.controller,
    this.physics,
    this.pageSnapping = true,
    this.onRefresh,
    required int itemCount,
    required Widget Function(int index) buildTitleSliver,
    required Widget Function(int index) buildSliver,
  }) : _sliver = _SliverTitledPages(
          itemCount: itemCount,
          buildTitleSliver: buildTitleSliver,
          buildSliver: buildSliver,
        );

  @override
  Widget build(BuildContext context) {
    return AdaptiveRefreshIndicator(
      config: CustomScrollViewConfiguration(controller: controller),
      physics: getPagePhysics(context: context, physics: physics, pageSnapping: pageSnapping),
      onRefresh: onRefresh,
      sliver: _sliver,
    );
  }
}

class _SliverEndlessPages extends StatelessWidget {
  final int? itemCount;
  final NullableIndexedWidgetBuilder builder;

  const _SliverEndlessPages({super.key, this.itemCount, required this.builder});

  @override
  Widget build(BuildContext context) {
    return SliverFillViewport(
      delegate: SliverChildBuilderDelegate(
        builder,
        childCount: itemCount,
      ),
    );
  }
}

class _SliverTitledPages extends StatelessWidget {
  final int itemCount;
  final Widget Function(int index) buildTitleSliver;
  final Widget Function(int index) buildSliver;

  const _SliverTitledPages({
    super.key,
    required this.itemCount,
    required this.buildTitleSliver,
    required this.buildSliver,
  });

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: List.generate(
        itemCount,
        (index) {
          return SliverStack(
            children: [
              buildSliver(index),
              buildTitleSliver(index),
            ],
          );
        },
      ),
    );
  }
}
