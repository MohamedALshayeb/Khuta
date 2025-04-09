import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomTextformfieldForgetPass extends StatelessWidget {
  const CustomTextformfieldForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        // maxLength: 12,
        inputFormatters: [LengthLimitingTextInputFormatter(11)],
        decoration: InputDecoration(
          enabledBorder: outLineInputBorderForForgetPass(),
          focusedBorder: outLineInputBorderForForgetPass(),
          // border: OutlineInputBorder(
          // ),
          hintText: 'رقم الهاتف',
          hintStyle: Styles.textstyle16,
        ),
      ),
    );
  }

  OutlineInputBorder outLineInputBorderForForgetPass() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: kLightSkyGrayColor),
    );
  }
}
