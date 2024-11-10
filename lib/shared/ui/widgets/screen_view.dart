import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "inherited_list_padding.dart";

class ScreenView extends StatelessWidget {
  final EdgeInsets viewPadding;
  final bool applyViewPadding;
  final bool? centerTitle;
  final List<Widget>? actions;
  final Widget title;
  final Widget child;
  final Widget? fab;
  final Widget? bottom;
  final Widget? flexibleSpace;

  final PreferredSizeWidget? appBarBottom;
  final double? toolbarHeight;
  final bool showAppBar;
  final bool slivering;
  final bool viewPaddingAsListPadding;

  const ScreenView({
    super.key,
    Widget? title,
    EdgeInsets? viewPadding,
    this.applyViewPadding = true,
    this.centerTitle,
    this.actions,
    required this.child,
    this.fab,
    this.bottom,
    this.flexibleSpace,
    this.appBarBottom,
    this.toolbarHeight,
    this.showAppBar = true,
    this.slivering = false,
    this.viewPaddingAsListPadding = kIsWeb,
  })  : title = title ?? const SizedBox.shrink(),
        viewPadding = viewPadding ?? _viewPadding;

  static const EdgeInsets _viewPadding = EdgeInsets.only(left: 12, right: 12);

  @override
  Widget build(BuildContext context) {
    EdgeInsets? effectiveListPadding = viewPaddingAsListPadding ? InheritedListPadding.of(context) + viewPadding : null;
    EdgeInsetsGeometry effectiveViewPadding =
    viewPaddingAsListPadding || !applyViewPadding ? EdgeInsets.zero : viewPadding;

    Widget body = _Body(
      listPadding: effectiveListPadding,
      viewPadding: effectiveViewPadding,
      child: child,
    );

    if (slivering) {
      body = _SliverBody(sliverAppBar: _buildSliverAppBar(), body: body);
    }

    return Scaffold(
      appBar: slivering ? null : _buildAppBar(),
      body: body,
      floatingActionButton: fab,
      bottomNavigationBar: bottom,
    );
  }

  PreferredSizeWidget? _buildAppBar() {
    if (!showAppBar) return null;

    return AppBar(
      leading: const _BackButton(),
      title: title,
      centerTitle: centerTitle,
      actions: actions,
      bottom: appBarBottom,
      flexibleSpace: flexibleSpace,
      toolbarHeight: toolbarHeight,
    );
  }

  /// build the same AppBar as buildAppBar but as Sliver with potentially more parameter
  SliverAppBar? _buildSliverAppBar() {
    if (!showAppBar) return null;

    return SliverAppBar(
      leading: const _BackButton(),
      title: title,
      centerTitle: centerTitle,
      actions: actions,
      bottom: appBarBottom,
      flexibleSpace: flexibleSpace,
      toolbarHeight: toolbarHeight ?? kToolbarHeight,
    );
  }
}

class _SliverBody extends StatelessWidget {
  final Widget? sliverAppBar;
  final Widget body;

  const _SliverBody({super.key, required this.sliverAppBar, required this.body});

  @override
  Widget build(BuildContext context) {
    List<Widget> slivers = [if (sliverAppBar != null) sliverAppBar!];

    return SafeArea(
      left: false,
      right: false,
      bottom: false,
      child: NestedScrollView(
        //physics: const NeverScrollableScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return slivers;
        },
        body: body,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final EdgeInsets? listPadding;
  final EdgeInsetsGeometry viewPadding;
  final Widget child;

  const _Body({super.key, required this.listPadding, required this.viewPadding, required this.child});

  @override
  Widget build(BuildContext context) {
    return InheritedListPadding(
      padding: listPadding,
      child: Padding(
        padding: viewPadding,
        child: child,
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) return const SizedBox.shrink();

    GoRouter router = GoRouter.of(context);

    return router.canPop() ? BackButton(onPressed: router.pop) : const SizedBox.shrink();
  }
}
