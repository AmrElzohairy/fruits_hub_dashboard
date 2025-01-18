import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_check_box.dart';

class IsFeaturedChecked extends StatefulWidget {
  const IsFeaturedChecked({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;
  @override
  State<IsFeaturedChecked> createState() => _IsFeaturedCheckedState();
}

class _IsFeaturedCheckedState extends State<IsFeaturedChecked> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Is Featured?',
                  style: TextStyles.semiBold13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }
}
