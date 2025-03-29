import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khuta_app/core/utils/go_router_model.dart';
import 'package:khuta_app/core/utils/styles.dart';

import 'package:khuta_app/features/auth/views/widgets/custom_app_bar_with_arrowBack.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_auth_button.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_textformField_forget_pass.dart';

class ForgetPassBody extends StatelessWidget {
  const ForgetPassBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 16),
          CustomAppBarWithArrowBack(appBarText: 'نسيان كلمة المرور'),
          SizedBox(height: 24),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز ',
                style: Styles.textstyle16.copyWith(color: Color(0xff616A6B)),
              ),
              Text(
                'التحقق',
                style: Styles.textstyle16.copyWith(color: Color(0xff616A6B)),
              ),
            ],
          ),
          SizedBox(height: 31),
          CustomTextformfieldForgetPass(),
          SizedBox(height: MediaQuery.of(context).size.height * .05),
          CustomAuthButton(
            onPressed: () {
              GoRouter.of(
                context,
              ).push(GoRouterModel.kNavigateToValidatePhoneCodeView);
            },
            textButtonAuth: 'نسيت كلمة المرور',
          ),
        ],
      ),
    );
  }
}
