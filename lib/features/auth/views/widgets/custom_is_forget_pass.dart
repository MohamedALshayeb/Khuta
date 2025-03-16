import 'package:flutter/material.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomTextIsForgetPass extends StatelessWidget {
  const CustomTextIsForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17),
      child: TextButton(
        onPressed: () {},
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'نسيت كلمة المرور؟',
            style: Styles.textStyle13.copyWith(
              color: Color(0xff333333),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
