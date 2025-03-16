import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/assest_data.dart';
import 'package:khuta_app/core/utils/styles.dart';
import 'package:khuta_app/core/widget/custom_text_form_field.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_auth_button.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_google_auth.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_is_forget_pass.dart';
import 'package:khuta_app/features/auth/views/widgets/is_not_has_account_text.dart';
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
              Padding(
                padding: const EdgeInsets.only(top: 73, bottom: 16),
                child: CustomTextFormField(
                  onChanged: (value) {
                    email = value;
                  },
                  hintText: 'البريد الإلكتروني',
                  labelText: 'البريد الإلكتروني',
                ),
              ),
              CustomTextFormField(
                onChanged: (value) {
                  pass = value;
                },
                hintText: 'كلمة المرور',
                labelText: 'كلمة المرور',
                obscureText: true,
              ),
              SizedBox(height: 16),
              CustomTextIsForgetPass(),
              SizedBox(height: 33),
              CustomAuthButton(
                onPressed: () {
                  if (keyForm.currentState!.validate()) {
                    print('valid');
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
              IsNotHasAccountText(),
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
