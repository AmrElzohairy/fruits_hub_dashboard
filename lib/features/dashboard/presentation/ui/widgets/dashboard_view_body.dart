import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_button.dart';

import '../../../../add_product/presentation/ui/add_product_view.dart';

class DashboardViewbody extends StatelessWidget {
  const DashboardViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(onPressed: (){
            Navigator.pushNamed(context, AddProductView.routeName);
          }, text: "Add Data",),
        ],
      ),
    );
  }
}