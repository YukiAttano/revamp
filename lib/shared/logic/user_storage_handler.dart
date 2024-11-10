import "dart:io";

import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:path_provider/path_provider.dart" as p;

import "../../features/authentication/logic/provider/auth_provider.dart";

final userStorageProvider = Provider((ref) {
  return UserStorageHandler("no-user"
    //ref.watch(authProvider.select((snap) => snap.data?.id ?? "no-user")),
  );
}, dependencies: [authProvider]);

class UserStorageHandler {
  final String userIdentifier;

  UserStorageHandler(this.userIdentifier);

  Future<Directory> getApplicationDocumentsDirectory() async {
    Directory dir = await p.getApplicationDocumentsDirectory();

    return _scopeDirectory(dir);
  }

  Future<Directory> getApplicationSupportDirectory() async {
    Directory dir = await p.getApplicationSupportDirectory();

    return _scopeDirectory(dir);
  }

  Future<Directory> getApplicationCacheDirectory() async {
    Directory dir = await p.getApplicationCacheDirectory();

    return _scopeDirectory(dir);
  }

  Future<Directory> getTemporaryDirectory() async {
    Directory dir = await p.getTemporaryDirectory();

    return _scopeDirectory(dir);
  }

  Directory _scopeDirectory(Directory dir) {
    String path = "${dir.path}/$userIdentifier";

    return Directory(path);
  }
}
