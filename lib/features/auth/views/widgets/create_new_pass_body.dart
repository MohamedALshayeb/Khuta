import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/assest_data.dart';
import 'package:khuta_app/core/utils/styles.dart';
import 'package:khuta_app/core/widget/custom_text_form_field.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_auth_button.dart';

class CreateNewPassBody extends StatelessWidget {
  const CreateNewPassBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12),
        Center(child: Text('كلمة مرور جديدة', style: Styles.textstyle24)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        Padding(
          padding: const EdgeInsets.only(right: 17),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'قم بإنشاء كلمة مرور جديدة لتسجيل الدخول',
              style: Styles.textstyle16.copyWith(color: kGrayscale950),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.035),
        CustomTextFormField(
          labelText: 'كلمة المرور الجديدة',
          obscureText: true,
        ),
        SizedBox(height: 24),
        CustomTextFormField(
          labelText: 'إعادة كلمة المرور الجديدة',
          obscureText: true,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        CustomAuthButton(
          onPressed: () {
            showDialogSuccessToChangePass(context);
          },
          textButtonAuth: 'إنشاء كلمة مرور جديدة',
        ),
      ],
    );
  }

  Future<dynamic> showDialogSuccessToChangePass(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Image.asset(AssetsData.kSuccessChangePassImg),
          contentPadding: EdgeInsets.symmetric(horizontal: 36, vertical: 45),
        );
      },
    );
  }
}
