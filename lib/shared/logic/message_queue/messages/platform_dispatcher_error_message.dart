class PlatformDispatcherErrorMessage {
  final Object error;
  final StackTrace stackTrace;
  final String platform;

  const PlatformDispatcherErrorMessage(this.error, this.stackTrace, this.platform);

  @override
  String toString() {
    return "[$platform]: $error\nStackTrace: $stackTrace.";
  }
}
