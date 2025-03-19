import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khuta_app/core/utils/assest_data.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomRegisterAppBar extends StatelessWidget {
  const CustomRegisterAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 128),
        Text(
          'حساب جديد',
          style: Styles.textstyle24.copyWith(fontWeight: FontWeight.w700),
        ),
        Spacer(),
        MaterialButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          child: Image.asset(
            AssetsData.arrowBackImgIcon,
            // height: 44,
            // width: 44,
          ),
        ),
      ],
    );
  }
}
