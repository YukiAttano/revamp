import "dart:async";

import "package:flutter_riverpod/flutter_riverpod.dart";

import "../../../../shared/logic/generic_state_notifier.dart";
import "../../../shared/logic/network/network_client.dart";
import "../../../shared/logic/user_storage_handler.dart";
import "../data/store_snapshot.dart";
import "repository/store_local_repository.dart";
import "repository/store_remote_repository.dart";
import "repository/store_repository.dart";

final storeRepoProvider = Provider((ref) {
  return StoreRepository(
    remote: StoreRemoteRepository(ref.watch(networkProvider)),
    local: StoreLocalRepository(
      storage: ref.watch(userStorageProvider),
    ),
  );
},);

// The Provider is hold alive as long as the user is on the same layer as the HomeRoute (because this provider is used in the HomeRoute)
// This means, if .autoDispose is used, the Provider is still alive if the user is on the SettingsRoute
// This also means, that if no .autoDispose is used, the Provider is kept alive as long as the App is alive.
final storeProvider = StateNotifierProvider<HomeNotifier, StoreSnapshot>(HomeNotifier.new);

class HomeNotifier extends GenericStateNotifier<List<String>, StoreSnapshot> {
  final Ref _ref;

  StoreRepository get _remote => _ref.read(storeRepoProvider);

  HomeNotifier(this._ref) : super(const StoreSnapshot.init(loading: true, initialized: false)) {
    unawaited(_init());
  }

  Future<void> _init() async {
    await readFromLocal(handleLoading: false);
    if (!mounted) return;
    await requestFromRemote(handleLoading: false);

    if (mounted) state = state.copyWith(loading: false, hideLoading: false, initialized: true);
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
