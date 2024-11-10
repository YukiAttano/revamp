
import "../../../shared/logic/load_snapshot/list_snapshot.dart";

class HomeSnapshot extends ListSnapshot<String> {
  const HomeSnapshot({
    required super.data,
    required super.loading,
    required super.exception,
    required super.hideLoading,
  });

  const HomeSnapshot.init({super.loading = false}) : super.init();

  @override
  HomeSnapshot copyWith({List<String>? data, bool? loading, bool? hideLoading, Object? exception}) {
    return HomeSnapshot(
      data: data ?? this.data,
      loading: loading ?? this.loading,
      exception: exception ?? this.exception,
      hideLoading: hideLoading ?? this.hideLoading,
    );
  }

  @override
  HomeSnapshot withoutException({List<String>? data, bool? loading, bool? hideLoading}) {
    return HomeSnapshot(
      data: data ?? this.data,
      loading: loading ?? this.loading,
      hideLoading: hideLoading ?? this.loading,
      exception: null,
    );
  }
}
