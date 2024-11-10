import "package:flutter/material.dart";

import "../../../../shared/ui/widgets/layout/screen_view.dart";
import "register_view.dart";

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenView(
      child: Center(
        child: SingleChildScrollView(
          child: RegisterView(),
        ),
      ),
    );
  }
}
