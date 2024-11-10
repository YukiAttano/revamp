import "user_model.dart";

enum AuthState {
  authenticated(true),
  unauthenticated(false);

  // ignore: avoid_positional_boolean_parameters
  const AuthState(this.loggedIn);

  final bool loggedIn;
}

class AuthSnapshot {
  final UserModel? user;

  AuthState get state => user != null ? AuthState.authenticated : AuthState.unauthenticated;

  const AuthSnapshot({required this.user});

  const AuthSnapshot.init() : this(user: null);

  AuthSnapshot copyWith({UserModel? user}) {
    return AuthSnapshot(user: user ?? this.user);
  }
}
