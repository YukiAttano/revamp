import "dart:async";

import "package:flutter_riverpod/flutter_riverpod.dart";

import "../../../../shared/logic/generic_state_notifier.dart";
import "../../../shared/logic/network/network_client.dart";
import "../../../shared/logic/user_storage_handler.dart";
import "../data/home_snapshot.dart";
import "repository/home_local_repository.dart";
import "repository/home_remote_repository.dart";
import "repository/home_repository.dart";

// The Provider is hold alive as long as the user is on the same layer as the HomeRoute (because this provider is used in the HomeRoute)
// This means, if .autoDispose is used, the Provider is still alive if the user is on the SettingsRoute
// This also means, that if no .autoDispose is used, the Provider is kept alive as long as the App is alive.
final homeProvider = StateNotifierProvider.autoDispose<HomeNotifier, HomeSnapshot>((ref) {
  HomeRepository repo = HomeRepository(
    remote: HomeRemoteRepository(ref.watch(networkProvider)),
    local: HomeLocalRepository(
      storage: ref.watch(userStorageProvider),
    ),
  );

  return HomeNotifier(repo);
});

class HomeNotifier extends GenericStateNotifier<List<String>, HomeSnapshot> {
  final HomeRepository _repo;

  HomeRemoteRepository get _remote => _repo.remote;

  HomeNotifier(this._repo) : super(const HomeSnapshot.init(loading: true)) {
    unawaited(_init());
  }

  Future<void> _init() async {
    await readFromLocal(handleLoading: false);
    if (!mounted) return;
    await requestFromRemote(handleLoading: false);

    if (mounted) state = state.copyWith(loading: false, hideLoading: false);
  }

  Future<void> readFromLocal({bool hideLoading = false, bool handleLoading = true}) {
    return Future.value();
    //  return requestData(request: , hideLoading: hideLoading, handleLoading: handleLoading);
  }

  Future<void> requestFromRemote({bool hideLoading = false, bool handleLoading = true}) {

    return Future.value();
    /*
    return requestData(
      request: () async => ,
      hideLoading: hideLoading,
      handleLoading: handleLoading,
    );*/
  }
}
