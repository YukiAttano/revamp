import "generic_snapshot.dart";

/// To remove 'abstract' keyword, see [GenericSnapshot.copyWith]
abstract class ListSnapshot<T> extends GenericSnapshot<List<T>> {
  @override
  bool get hasData => data.isNotEmpty;

  const ListSnapshot({required super.data, required super.loading, required super.exception, required super.hideLoading});

  const ListSnapshot.init({super.data = const [], required super.loading, super.hideLoading, super.exception}) : super.init();
}
