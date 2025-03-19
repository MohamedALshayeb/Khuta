import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khuta_app/core/utils/go_router_model.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomIsHasAccountTextOrNot extends StatelessWidget {
  const CustomIsHasAccountTextOrNot({
    super.key,
    required this.isHasOrNotAnAccountText,
    required this.buttonText,
  });
  final String isHasOrNotAnAccountText;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            GoRouter.of(context).push(GoRouterModel.kNavigateToRegisterView);
          },
          child: Text(
            buttonText,
            style: Styles.textstyle16.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          isHasOrNotAnAccountText,
          style: Styles.textstyle16.copyWith(color: Color(0xff949D9E)),
        ),
      ],
    );
  }
}
