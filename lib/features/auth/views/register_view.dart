import 'package:flutter/material.dart';
import 'package:khuta_app/core/widget/custom_text_form_field.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_auth_button.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_check_box_conditions.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_is_has_account_text_or_not.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_register_appbar.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});
  final GlobalKey<FormState> formKey = GlobalKey();
  String? name, email, pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 16),
                CustomRegisterAppBar(),
                SizedBox(height: 22),
                CustomTextFormField(
                  labelText: 'الاسم كامل',
                  onChanged: (val) {
                    name = val;
                  },
                ),
                CustomTextFormField(
                  labelText: 'البريد الإلكتروني',
                  onChanged: (val) {
                    email = val;
                  },
                ),
                CustomTextFormField(
                  labelText: 'كلمة المرور',
                  onChanged: (val) {
                    pass = val;
                  },
                ),
                CustomCheckBox(),
                SizedBox(height: MediaQuery.of(context).size.height * .03),
                CustomAuthButton(
                  textButtonAuth: 'إنشاء حساب جديد',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print('valid Registeration');
                    }
                  },
                ),
                SizedBox(height: 26),
                CustomIsHasAccountTextOrNot(
                  isHasOrNotAnAccountText: 'تمتلك حساب بالفعل؟',
                  buttonText: 'تسجيل دخول',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
