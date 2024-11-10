import "generic_snapshot.dart";

class NullableSnapshot<T> extends GenericSnapshot<T?> {
  @override
  bool get hasData => data != null;

  const NullableSnapshot({required super.data, required super.loading, required super.hideLoading, required super.exception});

  const NullableSnapshot.init({super.data, super.loading, super.hideLoading}) : super.init();
}
