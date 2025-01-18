import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_text_form_feild.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/ui/widgets/image_field.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              children: [
                const CustomTextFormField(
                  hintText: "Enter Product Name",
                  textInputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomTextFormField(
                  hintText: "Enter Product Price",
                  textInputType: TextInputType.number,
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomTextFormField(
                  hintText: "Enter Product Code",
                  textInputType: TextInputType.number,
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomTextFormField(
                  hintText: "Enter Description",
                  textInputType: TextInputType.text,
                  maxLines: 5,
                ),
                const SizedBox(
                  height: 16,
                ),
                ImageField(
                  onValueChanged: (image) {},
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            )),
      ),
    );
  }
}
