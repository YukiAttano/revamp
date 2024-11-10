class IllegalEnvironmentException implements Exception {
  final String failedParameter;

  const IllegalEnvironmentException(this.failedParameter);

  @override
  String toString() => "IllegalEnvironmentException: $failedParameter couldn't be loaded";
}

const Duration screenLoadingTime = Duration(milliseconds: 750);
Future<void> get waistTimeFuture => Future<void>.delayed(const Duration(seconds: 2));

abstract class Environment {
  static void check() {
    if (serverProtocol.isEmpty) throw const IllegalEnvironmentException("serverProtocol");
    if (serverHost.isEmpty) throw const IllegalEnvironmentException("serverHost");
    if (serverPort.isEmpty) throw const IllegalEnvironmentException("serverPort");
    if (serverUrl.isEmpty) throw const IllegalEnvironmentException("serverUrl");
    if (authTokenUrl.isEmpty) throw const IllegalEnvironmentException("authTokenUrl");
  }

  static const String serverAddress = "$serverProtocol://$serverHost:$serverPort";
  static const String serverApi = "$serverAddress$serverUrl/";
  static const String serverAuthTokenApi = "$serverAddress$authTokenUrl/";

  static const String serverProtocol = String.fromEnvironment("SERVER_PROTOCOL");
  static const String serverHost = String.fromEnvironment("SERVER_HOST");
  static const String serverPort = String.fromEnvironment("SERVER_PORT");
  static const String serverUrl = String.fromEnvironment("SERVER_URL");
  static const String authTokenUrl = String.fromEnvironment("AUTH_TOKEN_URL");
}
