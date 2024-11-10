import "package:flutter/material.dart";

import "../../shared/logic/message_queue/message_queue.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Liste")),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text("Test Snackbar"),
            subtitle: const Text("User Info"),
            onTap: () => MessageQueue.instance.sendMessage(Queue.userInfo, "Hello"),
          ),
          ListTile(
            title: const Text("Test Snackbar"),
            subtitle: const Text("User Error"),
            onTap: () => MessageQueue.instance.sendMessage(Queue.userError, "Error"),
          ),
        ],
      ),
    );
  }
}
