import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:ux_improvements/ux_improvements.dart";

import "../../shared/logic/message_queue/message_queue.dart";
import "../../shared/ui/widgets/layout/screen_view.dart";
import "../doom/data/doom_snapshot.dart";
import "../doom/logic/doom_provider.dart";
import "data/store_snapshot.dart";
import "logic/store_provider.dart";
import "views/store_empty_view.dart";
import "views/store_error_view.dart";
import "views/store_loading_view.dart";
import "views/store_view.dart";

class StoreScreen extends ConsumerWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    StoreSnapshot snap = ref.watch(storeProvider);

    Future<void> onRefresh() async => _onRefresh(ref, true);
    Future<void> onPressedRefresh() async => _onRefresh(ref, false);

    return FakeloadingWidget(
      replacement: const StoreLoadingView(),
      loading: snap.loading && !snap.initialized,
      child: Builder(
        builder: (context) {
          Widget child;

          return _ContentView(
            onRefresh: onRefresh,
            // onSelected: (id) => _onGoToProduct(context, id),
          );
          if (snap.hasData) {
            child = StoreView(
              onRefresh: onRefresh,
              // onSelected: (id) => _onGoToProduct(context, id),
            );
          } else if (snap.hasError) {
            child = StoreErrorView(
              onRefresh: onRefresh,
              exception: snap.exception,
              showLoading: snap.showLoading,
              onPressed: onPressedRefresh,
            );
          } else {
            child = StoreEmptyView(
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
    return ref.read(storeProvider.notifier).requestFromRemote(hideLoading: hideLoading);
  }

  void _onPressed(BuildContext context, int id) {}
}

class _ContentView extends StatelessWidget {
  final void Function(int id)? onSelected;
  final RefreshCallback? onRefresh;

  const _ContentView({super.key, this.onRefresh, this.onSelected});

  @override
  Widget build(BuildContext context) {
    return ScreenView(
      viewPaddingAsListPadding: true,
      child: StoreView(
        onRefresh: onRefresh,
        onSelected: onSelected,
      ),
    );
  }
}
