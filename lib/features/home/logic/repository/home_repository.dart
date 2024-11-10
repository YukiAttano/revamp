import "home_local_repository.dart";
import "home_remote_repository.dart";

class HomeRepository {
  final HomeRemoteRepository remote;
  final HomeLocalRepository local;

  const HomeRepository({required this.remote, required this.local});
}
