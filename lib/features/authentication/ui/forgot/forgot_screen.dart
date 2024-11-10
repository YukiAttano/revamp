import "package:flutter/material.dart";

import "../../../../shared/ui/widgets/layout/screen_view.dart";
import "forgot_view.dart";

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenView(
      child: Center(
        child: SingleChildScrollView(
          child: ForgotView(),
        ),
      ),
    );
  }
}
