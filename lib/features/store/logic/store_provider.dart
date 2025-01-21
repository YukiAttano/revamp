import "dart:async";

import "package:flutter_riverpod/flutter_riverpod.dart";

import "../../../../shared/logic/generic_state_notifier.dart";
import "../../../shared/data/money.dart";
import "../../../shared/data/product.dart";
import "../../../shared/logic/network/network_client.dart";
import "../../../shared/logic/user_storage_handler.dart";
import "../data/store_category.dart";
import "../data/store_item.dart";
import "../data/store_snapshot.dart";
import "repository/store_local_repository.dart";
import "repository/store_remote_repository.dart";
import "repository/store_repository.dart";

final storeRepoProvider = Provider(
  (ref) {
    return StoreRepository(
      remote: StoreRemoteRepository(ref.watch(networkProvider)),
      local: StoreLocalRepository(
        storage: ref.watch(userStorageProvider),
      ),
    );
  },
);

final storeProvider = StateNotifierProvider<HomeNotifier, StoreSnapshot>(HomeNotifier.new);

class HomeNotifier extends GenericStateNotifier<List<StoreItem>, StoreSnapshot> {
  final Ref _ref;

  StoreRepository get _repo => _ref.read(storeRepoProvider);

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
    state = state.copyWith(data: _Data().l);

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

class _Data {
  List<StoreItem> l = [
    StoreItem(
      category: StoreCategory(id: "0", name: "recently viewed"),
      products: [
        StoreProduct(
          id: 0,
          title: "Zero",
          type: "Bamboo Shoes",
          size: "38",
          condition: "Worn",
          costs: Money(amount: 20, currency: "EUR"),
        ),
        StoreProduct(
          id: 1,
          title: "One",
          type: "Rollkragenpullover",
          size: "L",
          condition: "Like New",
          costs: Money(amount: 40, currency: "EUR"),
        ),
      ],
    ),
    StoreItem(
      category: StoreCategory(id: "1", name: "most viewed"),
      products: [
        StoreProduct(
          id: 2,
          type: "Rollkragenpullover",
          title: "Two",
          costs: Money(amount: 20, currency: "EUR"),
        ),
        StoreProduct(
          id: 3,
          title: "Three",
          type: "T-Shirt",
          height: 150,
          width: 150,
          condition: "Like New",
          costs: Money(amount: 40, currency: "EUR"),
        ),
        StoreProduct(
          id: 4,
          title: "Four",
          type: "T-Shirt",
          size: "S",
          costs: Money(amount: 40, currency: "EUR"),
        ),
      ],
    ),
    StoreItem(
      category: StoreCategory(id: "1", name: "most liked"),
      products: [
        StoreProduct(
          id: 5,
          type: "Vintage Trackpant",
          title: "Five",
          condition: "Rotten",
          size: "L",
          costs: Money(amount: 20, currency: "EUR"),
        ),
        StoreProduct(
          id: 6,
          title: "Six",
          type: "T-Shirt",
          size: "XL",
          condition: "Good",
          costs: Money(amount: 60, currency: "EUR"),
        ),
        StoreProduct(
          id: 7,
          title: "Seven",
          type: "Trainingsjacke",
          condition: "Good",
          costs: Money(amount: 100, currency: "EUR"),
        ),
        StoreProduct(
          id: 8,
          title: "Eight",
          type: "Trainingsjacke",
          costs: Money(amount: 40, currency: "EUR"),
        ),
      ],
    ),
  ];
}
