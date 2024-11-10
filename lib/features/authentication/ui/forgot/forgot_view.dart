import "package:flutter/material.dart";
import "package:ux_improvements/ux_improvements.dart";

import "../../../../shared/ui/widgets/button/reset_password_button.dart";
import "../../../../shared/ui/widgets/layout/gap.dart";
import "../../../../shared/ui/widgets/templates/advanced_card.dart";
import "../../../../shared/ui/widgets/text_field/email_field.dart";
import "../login/login_screen.dart";

class ForgotView extends StatefulWidget {
  const ForgotView({super.key});

  @override
  State<ForgotView> createState() => _ForgotViewState();
}

class _ForgotViewState extends State<ForgotView> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: WindowSizes.medium.width),
      child: AdvancedCard(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Gap(),
            EmailField(
              controller: _emailController,
            ),
            const Gap(),
            ConstrainedBox(
              constraints: primaryButtonConstraints,
              child: const ResetPasswordButton(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
}
