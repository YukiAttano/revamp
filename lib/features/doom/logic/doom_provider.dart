import "dart:async";
import "dart:math";

import "package:flutter_riverpod/flutter_riverpod.dart";

import "../../../environment.dart";
import "../../../shared/data/money.dart";
import "../../../shared/logic/generic_state_notifier.dart";
import "../data/doom_snapshot.dart";
import "../data/product.dart";

final doomProvider = StateNotifierProvider<DoomNotifier, DoomSnapshot>((ref) {
  return DoomNotifier();
},);

class DoomNotifier extends GenericStateNotifier<List<Product>, DoomSnapshot> {
  DoomNotifier() : super(const DoomSnapshot.init(loading: true)) {
    unawaited(_init());
  }

  Future<void> _init() async {
    await requestProducts();
    if (mounted) state = state.copyWith(initialized: true);
  }

  Future<void> refreshProducts({bool hideLoading = false}) async {
    if (state.loading) return;
    await request(request: () async => waistTimeFuture, hideLoading: hideLoading);
  }

  Future<void> requestProducts() async {
    await waistTimeFuture;
    await requestData(request: () async => _Data().list(10));
  }
}

class _Data {
  
  Random r = Random();
  
  List<Product> list(int amount) {
    return List.generate(amount, (index) {
      return Product.dummy.copyWith(
        id: index,
        title: "Product $index",
        costs: Money(amount: r.nextInt(100).toDouble(), currency: "Eur"),
        likes: r.nextInt(200) * 100
      );
    },);
  }
  
}