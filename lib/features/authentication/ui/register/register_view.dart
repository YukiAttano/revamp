import "package:flutter/material.dart";
import "package:ux_improvements/ux_improvements.dart";

import "../../../../shared/ui/widgets/button/register_button.dart";
import "../../../../shared/ui/widgets/templates/advanced_card.dart";
import "../../../../shared/ui/widgets/layout/gap.dart";
import "../../../../shared/ui/widgets/text_field/email_field.dart";
import "../login/login_screen.dart";

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: WindowSizes.medium.width),
      child: AdvancedCard(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            EmailField(controller: _emailController),
            const Gap(),
            ConstrainedBox(
              constraints: primaryButtonConstraints,
              child: const RegisterButton(),
            ),
          ],
        ),
      ),
    );
  }
}
