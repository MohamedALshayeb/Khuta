import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomTextFieldPhoneEditPerson extends StatelessWidget {
  const CustomTextFieldPhoneEditPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      inputFormatters: [LengthLimitingTextInputFormatter(11)],
      decoration: InputDecoration(
        enabledBorder: outlineInputBorderPhoneEditPersinProfile(),
        focusedBorder: outlineInputBorderPhoneEditPersinProfile(),
        // border: OutlineInputBorder(
        // ),
        hintText: 'Phone',
        hintStyle: Styles.textStyle13.copyWith(color: kGrayBlue9EColor),
        hintTextDirection: TextDirection.rtl,
      ),
    );
  }

  OutlineInputBorder outlineInputBorderPhoneEditPersinProfile() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: kLightSkyGrayColor),
    );
  }
}
