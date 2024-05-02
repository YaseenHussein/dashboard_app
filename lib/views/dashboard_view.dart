import 'package:dashboard_app/widgets/adaptive_layout.dart';
import 'package:dashboard_app/widgets/desktop_dashboard_layout.dart';
import 'package:dashboard_app/widgets/mobil_dashboard_layout.dart';
import 'package:dashboard_app/widgets/taplet_dashboard_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobilDashboardLayout(),
        deskTopLayout: (context) => const DesktopDashboardLayout(),
        tabletLayout: (context) => const TabletDashboardLayout(),
      ),
    );
  }
}
