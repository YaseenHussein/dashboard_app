import 'package:dashboard_app/views/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveDashboardApp());
}

class ResponsiveDashboardApp extends StatelessWidget {
  const ResponsiveDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardView(),
    );
  }
}
