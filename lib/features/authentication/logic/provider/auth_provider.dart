import "package:flutter_riverpod/flutter_riverpod.dart";

import "../../../../shared/logic/message_queue/message_queue.dart";
import "../handler/auth_handler.dart";
import "auth_snapshot.dart";
import "user_model.dart";

final authProvider = StateNotifierProvider<AuthNotifier, AuthSnapshot>(
  (StateNotifierProviderRef<AuthNotifier, AuthSnapshot> ref) {
    return AuthNotifier(handler: AuthHandler());
  },
);

class AuthNotifier extends StateNotifier<AuthSnapshot> {
  final AuthHandler _handler;

  AuthNotifier({required AuthHandler handler})
      : _handler = handler,
        super(const AuthSnapshot.init());

  Future<void> dummy() async {
    await Future.delayed(const Duration(seconds: 2));

    state = const AuthSnapshot(user: UserModel(id: "dummy", username: "username"));

    MessageQueue.instance.sendMessage(Queue.userInfo, "Erfolgreich eingeloggt");
  }

  Future<void> logIn(String email, String password) async {
    await _handler.login(email, password);
  }

  Future<void> logOut() async {
    state = const AuthSnapshot.init();
  }
}
