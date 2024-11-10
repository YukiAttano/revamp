import "../../../shared/logic/load_snapshot/list_snapshot.dart";
import "product.dart";

class DoomSnapshot extends ListSnapshot<Product> {

  final bool initialized;

  const DoomSnapshot({
    required super.data,
    required super.loading,
    required super.exception,
    required super.hideLoading,
    required this.initialized,
  });

  const DoomSnapshot.init({this.initialized = false, super.loading = false}) : super.init();

  @override
  DoomSnapshot copyWith({List<Product>? data, bool? initialized, bool? loading, bool? hideLoading, Object? exception}) {
    return DoomSnapshot(
      data: data ?? this.data,
      initialized: initialized ?? this.initialized,
      loading: loading ?? this.loading,
      hideLoading: hideLoading ?? this.hideLoading,
      exception: exception ?? this.exception,
    );
  }

  @override
  DoomSnapshot withoutException({List<Product>? data, bool? initialized, bool? loading, bool? hideLoading}) {
    return DoomSnapshot(
      data: data ?? this.data,
      initialized: initialized ?? this.initialized,
      loading: loading ?? this.loading,
      hideLoading: hideLoading ?? this.hideLoading,
      exception: null,
    );
  }
}
