import "../../../shared/data/product.dart";
import "../../../shared/logic/load_snapshot/list_snapshot.dart";

class DoomSnapshot extends ListSnapshot<DoomProduct> {

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
  DoomSnapshot copyWith({List<DoomProduct>? data, bool? initialized, bool? loading, bool? hideLoading, Object? exception}) {
    return DoomSnapshot(
      data: data ?? this.data,
      initialized: initialized ?? this.initialized,
      loading: loading ?? this.loading,
      hideLoading: hideLoading ?? this.hideLoading,
      exception: exception ?? this.exception,
    );
  }

  @override
  DoomSnapshot withoutException({List<DoomProduct>? data, bool? initialized, bool? loading, bool? hideLoading}) {
    return DoomSnapshot(
      data: data ?? this.data,
      initialized: initialized ?? this.initialized,
      loading: loading ?? this.loading,
      hideLoading: hideLoading ?? this.hideLoading,
      exception: null,
    );
  }
}
