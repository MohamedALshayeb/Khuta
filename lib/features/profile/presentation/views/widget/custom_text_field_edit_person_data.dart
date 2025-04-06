import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomTextFieldEditPersonData extends StatelessWidget {
  const CustomTextFieldEditPersonData({
    super.key,
    required this.hintText,
    this.onPressed,
  });

  final String hintText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        decoration: InputDecoration(
          enabled: false,
          // enabledBorder: outlineInputBorderEditPersonData(),
          // focusedBorder: outlineInputBorderEditPersonData(),
          border: outlineInputBorderEditPersonData(),
          hintText: hintText,
          hintTextDirection: TextDirection.rtl,
          hintStyle: Styles.textStyle13.copyWith(color: kGrayBlue9EColor),
          prefixIcon: IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.mode_edit_outlined,
              color: kGrayBlue9EColor,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorderEditPersonData() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: kLightSkyGrayColor),
    );
  }
}
