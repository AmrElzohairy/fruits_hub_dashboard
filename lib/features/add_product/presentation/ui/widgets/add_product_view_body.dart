import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_text_form_feild.dart';

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
            child: const Column(
              children: [
                CustomTextFormField(
                  hintText: "Enter Product Name",
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  hintText: "Enter Product Price",
                  textInputType: TextInputType.number,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  hintText: "Enter Product Code",
                  textInputType: TextInputType.number,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  hintText: "Enter Description",
                  textInputType: TextInputType.text,
                  maxLines: 5,
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            )),
      ),
    );
  }
}
