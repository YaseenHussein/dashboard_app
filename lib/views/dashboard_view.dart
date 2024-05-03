import 'package:dashboard_app/utils/size_config.dart';
import 'package:dashboard_app/widgets/adaptive_layout.dart';
import 'package:dashboard_app/widgets/desktop_dashboard_layout.dart';
import 'package:dashboard_app/widgets/drawer_widget/custome_drawer.dart';
import 'package:dashboard_app/widgets/mobil_dashboard_layout.dart';
import 'package:dashboard_app/widgets/taplet_dashboard_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: const Drawer(child: CustomDrawer()),
      appBar: SizeConfig.getWidth(context) < SizeConfig.tablet
          ? AppBar(
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu_sharp),
              ),
              elevation: 0,
              backgroundColor: const Color(0xffFAFAFA),
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobilDashboardLayout(),
        deskTopLayout: (context) => const DesktopDashboardLayout(),
        tabletLayout: (context) => const TabletDashboardLayout(),
      ),
    );
  }
}
