import 'package:flutter/material.dart';
import 'package:khuta_app/core/utils/styles.dart';

class IsNotHasAccountText extends StatelessWidget {
  const IsNotHasAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'قم بإنشاء حساب',
            style: Styles.textstyle16.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          'لا تمتلك حساب؟',
          style: Styles.textstyle16.copyWith(color: Color(0xff949D9E)),
        ),
      ],
    );
  }
}
