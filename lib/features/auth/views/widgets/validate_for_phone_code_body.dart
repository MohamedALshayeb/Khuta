import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/styles.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_app_bar_with_arrowBack.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_auth_button.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_validate_code_text_form_field.dart';

class ValidateForPhoneCodeBody extends StatelessWidget {
  const ValidateForPhoneCodeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        CustomAppBarWithArrowBack(appBarText: 'التحقق من الرمز'),
        SizedBox(height: 28),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'أدخل الرمز الذي أرسلناه إلى حسابك',
                  style: Styles.textstyle16,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomValidateCodeTextFormField(),
                  CustomValidateCodeTextFormField(),
                  CustomValidateCodeTextFormField(),
                  CustomValidateCodeTextFormField(),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              CustomAuthButton(
                onPressed: () {},
                textButtonAuth: 'تحقق من الرمز',
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'إعادة إرسال الرمز',
                  style: Styles.textstyle16.copyWith(color: Color(0xff333333)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
