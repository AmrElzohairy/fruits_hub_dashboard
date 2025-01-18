import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_button.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_text_form_feild.dart';
import 'package:fruits_hub_dashboard/features/add_product/domain/entities/add_product_input_entity.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/ui/widgets/image_field.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/ui/widgets/is_featured_checked.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String name, code, description;
  late num price;
  bool isFeatured = false;
  File? pickedImage;
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
              CustomTextFormField(
                onSaved: (value) {
                  name = value!;
                },
                hintText: "Enter Product Name",
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  price = num.parse(value!);
                },
                hintText: "Enter Product Price",
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  code = value!.toLowerCase();
                },
                hintText: "Enter Product Code",
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  description = value!;
                },
                hintText: "Enter Description",
                textInputType: TextInputType.text,
                maxLines: 5,
              ),
              const SizedBox(
                height: 16,
              ),
              IsFeaturedChecked(
                onChanged: (value) {
                  isFeatured = value;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              ImageField(
                onValueChanged: (image) {
                  pickedImage = image;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              CustomButton(
                onPressed: () {
                  if (pickedImage != null) {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      AddProductInputEntity(
                          name: name,
                          code: code,
                          description: description,
                          price: price,
                          image: pickedImage!,
                          isFeatured: isFeatured);
                    } else {
                      setState(() { 
                        
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  } else {
                    showError(context);
                  }
                },
                text: "Add Product",
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showError(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Please Select Product Image"),
      ),
    );
  }
}
