import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomButtonToAddChildImg extends StatelessWidget {
  const CustomButtonToAddChildImg({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'إضافة طفل',
            style: Styles.textstyle24.copyWith(
              color: kGrayBlue9EColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(width: 16),
          Icon(Icons.add_circle_outline, color: kGrayBlue9EColor, size: 25),
        ],
      ),
    );
  }
}
