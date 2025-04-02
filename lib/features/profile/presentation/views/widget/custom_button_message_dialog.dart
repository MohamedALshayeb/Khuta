import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomButtonMessageDialog extends StatelessWidget {
  const CustomButtonMessageDialog({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    required this.onPressed,
  });

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(16),
          color: backgroundColor,
        ),
        child: MaterialButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
