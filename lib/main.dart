import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/helpers/on_generate_route.dart';
import 'package:fruits_hub_dashboard/features/dashboard/presentation/ui/dashboard_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: DashboardView.routeName,
    );
  }
}
