// import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomAuthButton extends StatelessWidget {
  CustomAuthButton({super.key, this.onPressed});
  // final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 5,
      height: 54,
      minWidth: 255,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),

      // padding: const EdgeInsets.symmetric(horizontal: ),
      color: kPrimaryColor,
      onPressed: onPressed,
      child: Text('تسجيل الدخول', style: Styles.textStyle18),
    );
  }
}
