
import "../../../shared/logic/load_snapshot/list_snapshot.dart";
import "store_item.dart";

class StoreSnapshot extends ListSnapshot<StoreItem> {

  final bool initialized;

  const StoreSnapshot({
    required super.data,
    required this.initialized,
    required super.loading,
    required super.exception,
    required super.hideLoading,
  });

  const StoreSnapshot.init({super.loading = false, required this.initialized}) : super.init();

  @override
  StoreSnapshot copyWith({List<StoreItem>? data, bool? initialized, bool? loading, bool? hideLoading, Object? exception}) {
    return StoreSnapshot(
      data: data ?? this.data,
      initialized: initialized ?? this.initialized,
      loading: loading ?? this.loading,
      exception: exception ?? this.exception,
      hideLoading: hideLoading ?? this.hideLoading,
    );
  }

  @override
  StoreSnapshot withoutException({List<StoreItem>? data, bool? initialized, bool? loading, bool? hideLoading}) {
    return StoreSnapshot(
      data: data ?? this.data,
      initialized: initialized ?? this.initialized,
      loading: loading ?? this.loading,
      hideLoading: hideLoading ?? this.loading,
      exception: null,
    );
  }
}
