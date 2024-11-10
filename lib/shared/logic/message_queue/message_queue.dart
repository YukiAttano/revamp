import "dart:developer";

import "package:dart_mq/dart_mq.dart";
import "package:flutter/material.dart";
import "../../../app.dart";

import "../localizable.dart";
import "localizable_message.dart";
import "widgets/error_snackbar.dart";
import "widgets/info_snackbar.dart";

enum Queue {
  userInfo("user_info"),
  userError("user_error"),
  providerObserver("provider_observer"),
  backend("backend"),
  uncatched("uncatched"),
  stats("statistics");

  const Queue(this.name);

  final String name;
}

class MessageQueue with ConsumerMixin {
  static const String _translatableHeader = "t";

  static final MessageQueue instance = MessageQueue();

  void init() {
    MQClient.initialize();

    for (Queue queue in Queue.values) {
      MQClient.instance.declareQueue(queue.name);
    }

    _startUserInfoListener();
    _startUserErrorListener();
    _startProviderListener();
    _startBackendListener();
    _startUncatchedListener();
  }

  void sendMessage(Queue queue, String message) {
    MQClient.instance.sendMessage(
      routingKey: queue.name,
      message: Message(
        payload: message,
      ),
    );
  }

  void sendLocalizable(Queue queue, Localizable<String> message) {
    MQClient.instance.sendMessage(
      routingKey: queue.name,
      message: LocalizableMessage(
        payload: message,
      ),
    );
  }

  void _startUserInfoListener() {
    subscribe(
      queueId: Queue.userInfo.name,
      callback: (Message message) {
        SnackBar snackbar;

        switch (message) {
          case LocalizableMessage(payload: Localizable<String> payload):
            snackbar = InfoSnackbar.localize(
              message: payload,
            );
          default:
            snackbar = InfoSnackbar(
              message: message.payload.toString(),
            );
        }

        _showSnackbar(snackbar);
      },
    );
  }

  void _startUserErrorListener() {
    subscribe(
      queueId: Queue.userError.name,
      callback: (Message message) {
        SnackBar snackbar;

        switch (message) {
          case LocalizableMessage(payload: Localizable<String> payload):
            snackbar = ErrorSnackbar.localize(
              context: Revamp.scaffoldMessengerKey.currentContext!,
              message: payload,
            );
          default:
            snackbar = ErrorSnackbar(
              context: Revamp.scaffoldMessengerKey.currentContext!,
              message: message.payload.toString(),
            );
        }

        _showSnackbar(snackbar);
      },
    );
  }

  void _startBackendListener() {
    subscribe(
      queueId: Queue.backend.name,
      callback: (Message message) {
        log(message.payload.toString(), name: "BACKEND");
      },
    );
  }

  void _startUncatchedListener() {
    subscribe(
      queueId: Queue.uncatched.name,
      callback: (Message message) {
        log(message.payload.toString(), name: "UNCATCHED");
      },
    );
  }

  void _startProviderListener() {
    subscribe(
      queueId: Queue.providerObserver.name,
      callback: (Message message) {
        String timestamp = message.timestamp ?? "";
        DateTime? date = DateTime.tryParse(timestamp);

        String dateText = "";

        if (date != null) {
          dateText = "${date.hour}:${date.minute}:${date.second}";
        }

        log("$dateText ${message.payload}", name: Queue.providerObserver.name, time: date);
      },
    );
  }

  void _showSnackbar(SnackBar snackBar) {
    GlobalKey<ScaffoldMessengerState> key = Revamp.scaffoldMessengerKey;

    key.currentState!.clearSnackBars();

    key.currentState!.showSnackBar(
      snackBar,
    );
  }
}
