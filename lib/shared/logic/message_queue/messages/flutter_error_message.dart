
import "package:flutter/foundation.dart";

class FlutterErrorMessage {
  final FlutterErrorDetails details;
  
  const FlutterErrorMessage(this.details);
  
  @override
  String toString() {
    return "(${details.library}) ${details.summary}";
  }
}
