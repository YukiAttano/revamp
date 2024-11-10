import "package:flutter/material.dart";

import "../../../../shared/ui/widgets/layout/screen_view.dart";
import "login_view.dart";

const String companyHeroTag = "CompanyLogo";
const BoxConstraints primaryButtonConstraints = BoxConstraints.tightFor(width: 240);

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenView(
      //appBar: AppBar(),
      child: Center(
        child: SingleChildScrollView(
          child: LoginView(),
        ),
      ),
    );
  }
}
