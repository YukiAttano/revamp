import "store_local_repository.dart";
import "store_remote_repository.dart";

class StoreRepository {
  final StoreRemoteRepository remote;
  final StoreLocalRepository local;

  const StoreRepository({required this.remote, required this.local});
}
