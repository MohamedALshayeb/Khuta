import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:khuta_app/constants.dart';

class CustomValidateCodeTextFormField extends StatelessWidget {
  const CustomValidateCodeTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 74,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 16)],
      ),
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.phone,
        // maxLength: 1,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        decoration: InputDecoration(
          filled: true,
          fillColor: kSoftColor,
          enabledBorder: outlineInputBorderForValidatePhoneCode(),
          focusedBorder: outlineInputBorderForValidatePhoneCode(),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorderForValidatePhoneCode() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: kLightSkyGrayColor),
    );
  }
}
