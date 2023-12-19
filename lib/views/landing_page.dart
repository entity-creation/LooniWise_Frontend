import 'package:flutter/material.dart';
import 'package:looniwise_frontend/views/layout/landing_mobile_layout.dart';
import 'package:looniwise_frontend/views/layout/landing_tablet_layout.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1080) {
        return const LandingTabletLayout();
      } else {
        return const LandingMobileLayout();
      }
    });
  }
}
