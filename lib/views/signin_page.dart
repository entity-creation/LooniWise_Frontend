import 'package:flutter/material.dart';
import 'package:looniwise_frontend/views/layout/signin_mobile_layout.dart';
import 'package:looniwise_frontend/views/layout/signin_tablet_layout.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 900) {
          return const SigninTabletLayout();
        } else {
          return const SigninMobileLayout();
        }
      },
    );
  }
}
