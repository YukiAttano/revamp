import "../provider/user_model.dart";

class AuthHandler {
  static const AuthHandler instance = AuthHandler._();

  const AuthHandler._();

  factory AuthHandler() => instance;

  Future<UserModel> login(String email, String password) async {
    throw UnimplementedError();
  }
}
