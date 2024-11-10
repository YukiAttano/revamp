import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:ux_improvements/ux_improvements.dart";

import "../../../../routing/main_route.dart";
import "../../../../routing/routes/forgot_route.dart";
import "../../../../routing/routes/register_route.dart";
import "../../../../shared/ui/widgets/button/create_account_button.dart";
import "../../../../shared/ui/widgets/button/forgot_password_button.dart";
import "../../../../shared/ui/widgets/button/login_button.dart";
import "../../../../shared/ui/widgets/gap.dart";
import "../../../../shared/ui/widgets/templates/advanced_card.dart";
import "../../../../shared/ui/widgets/text_field/email_field.dart";
import "../../../../shared/ui/widgets/text_field/password_field.dart";
import "../../logic/provider/auth_provider.dart";
import "login_screen.dart";

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: WindowSizes.medium.width),
      child: AdvancedCard(
        trailing: FakeloadingWidget.reserve(
          replacement: const LinearProgressIndicator(),
          loading: _isLoading,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            EmailField(
              controller: _emailController,
            ),
            const Gap(),
            PasswordField(
              controller: _passwordController,
            ),
            const Gap(),
            ConstrainedBox(
              constraints: primaryButtonConstraints,
              child: LoginButton(onLogin: !_isLoading ? _onLogin : null),
            ),
            const Gap.huge(),
            ForgotPasswordButton(
              onForgotPassword: _onForgotPassword,
            ),
            CreateAccountButton(
              onCreateAccount: _onCreateAccount,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onForgotPassword() async {
    return const ForgotRoute().push<void>(context);
  }

  Future<void> _onLogin() async {
    setState(() => _isLoading = true);
    await ref.read(authProvider.notifier).dummy();

    if (mounted) {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _onCreateAccount() {
    return const RegisterRoute().push<void>(context);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
