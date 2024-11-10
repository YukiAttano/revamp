import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "../../../../features/authentication/logic/provider/auth_provider.dart";

class LogoutButton extends ConsumerWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: const Icon(Icons.logout),
      onPressed: () async => _onLogout(ref),
    );
  }


  Future<void> _onLogout(WidgetRef ref) {
    return ref.read(authProvider.notifier).logOut();
  }
}
