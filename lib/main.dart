import "dart:async";
import "dart:io";

import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "app.dart";
import "shared/logic/message_queue/message_queue.dart";
import "shared/logic/message_queue/messages/flutter_error_message.dart";
import "shared/logic/message_queue/messages/platform_dispatcher_error_message.dart";

void main() {

  MessageQueue.instance.init();

  runZonedGuarded(() {
    _setupErrorHandling();

    runApp(
      const ProviderScope(
        //  observers: [AppProviderObserver()],
        child: const Revamp(),
      ),
    );
  }, _onError,);
}

void _setupErrorHandling() {
  FlutterError.onError = (error) {
    FlutterError.presentError(error);
    MessageQueue.instance.sendMessage(Queue.uncatched, FlutterErrorMessage(error).toString());
  };

  PlatformDispatcher.instance.onError = _onError;
}

bool _onError(Object error, StackTrace stackTrace) {
  MessageQueue.instance.sendMessage(
    Queue.uncatched,
    PlatformDispatcherErrorMessage(
      error,
      stackTrace,
      kIsWeb ? "Web" : "${Platform.operatingSystem}/${Platform.operatingSystemVersion}",
    ).toString(),
  );

  return true;
}