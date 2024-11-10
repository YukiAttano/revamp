import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:revamp/features/doom/ui/views/doom_view.dart";
import "package:ux_improvements/ux_improvements.dart";

import "../../../routing/main_route.dart";
import "../../../routing/routes/product_route.dart";
import "../../../shared/ui/widgets/layout/screen_view.dart";
import "../data/doom_snapshot.dart";
import "../logic/doom_provider.dart";
import "views/doom_empty_view.dart";
import "views/doom_error_view.dart";
import "views/doom_loading_view.dart";

class DoomScreen extends ConsumerWidget {
  const DoomScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DoomSnapshot snap = ref.watch(doomProvider);

    Future<void> onRefresh() async => _onRefresh(ref, true);
    Future<void> onPressedRefresh() async => _onRefresh(ref, false);

    return FakeloadingWidget(
      replacement: const DoomLoadingView(),
      loading: snap.loading && !snap.initialized,
      child: Builder(
        builder: (context) {
          Widget child;

          if (snap.hasData) {
            child = DoomView(
              products: snap.data,
              onRefresh: onRefresh,
              onSelected: (id) => _onGoToProduct(context, id),
            );
          } else if (snap.hasError) {
            child = DoomErrorView(
              onRefresh: onRefresh,
              exception: snap.exception,
              showLoading: snap.showLoading,
              onPressed: onPressedRefresh,
            );
          } else {
            child = DoomEmptyView(
              showLoading: snap.showLoading,
              onRefresh: onRefresh,
              onPressed: onPressedRefresh,
            );
          }

          return child;
        },
      ),
    );
  }

  Future<void> _onRefresh(WidgetRef ref, bool hideLoading) async {
    return ref.read(doomProvider.notifier).refreshProducts(hideLoading: hideLoading);
  }

  void _onGoToProduct(BuildContext context, int id) {
    const ProductRoute().go(context);
  }
}
