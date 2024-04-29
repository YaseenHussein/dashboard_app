import 'package:dashboard_app/widgets/adaptive_layout.dart';
import 'package:dashboard_app/widgets/desktop_dashboard_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        deskTopLayout: (context) => const DesktopDashboardLayout(),
        tabletLayout: (context) => const SizedBox(),
      ),
    );
  }
}
