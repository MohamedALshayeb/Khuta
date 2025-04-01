import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khuta_app/core/utils/go_router_model.dart';

import 'package:khuta_app/core/utils/styles.dart';
import 'package:khuta_app/core/widget/custom_text_form_field.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_auth_button.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_google_auth.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_is_forget_pass.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_is_has_account_text_or_not.dart';
import 'package:khuta_app/features/auth/views/widgets/or_text_divider.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  String? email, pass;
  GlobalKey<FormState> keyForm = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Form(
          key: keyForm,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 64),
              Center(
                child: Text(
                  'تسجيل دخول',
                  style: Styles.textstyle24.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 73),
              CustomTextFormField(
                onChanged: (value) {
                  email = value;
                },

                labelText: 'البريد الإلكتروني',
              ),
              CustomTextFormField(
                onChanged: (value) {
                  pass = value;
                },
                // hintText: 'كلمة المرور',
                labelText: 'كلمة المرور',
                obscureText: true,
              ),
              // SizedBox(height: 16),
              CustomTextIsForgetPass(),
              SizedBox(height: 33),
              CustomAuthButton(
                textButtonAuth: 'تسجيل الدخول',
                onPressed: () {
                  if (keyForm.currentState!.validate()) {
                    print('valid');
                    GoRouter.of(
                      context,
                    ).pushReplacement(GoRouterModel.kNavigateToHomeView);
                  }
                },
              ),
              SizedBox(height: 33),
              // Text.rich(
              //   TextSpan(
              //     children: [
              //       TextSpan(text: ' لا تمتلك حساب؟'),
              //       TextSpan(text: 'قم بإنشاء حساب '),
              //     ],
              //   ),
              // ),
              CustomIsHasAccountTextOrNot(
                isHasOrNotAnAccountText: 'لا تمتلك حساب؟',
                buttonText: 'قم بإنشاء حساب',
                onPressed: () {
                  GoRouter.of(
                    context,
                  ).push(GoRouterModel.kNavigateToRegisterView);
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .08),
              OrTextDivider(),
              SizedBox(height: 16),
              CustomGoogleAuth(),
            ],
          ),
        ),
      ),
    );
  }
}
