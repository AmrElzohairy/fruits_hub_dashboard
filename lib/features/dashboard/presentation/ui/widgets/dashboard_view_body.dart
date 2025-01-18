import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/features/dashboard/presentation/ui/widgets/custom_button.dart';

class DashboardViewbody extends StatelessWidget {
  const DashboardViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(onPressed: (){}, text: "Add Data",),
        ],
      ),
    );
  }
}