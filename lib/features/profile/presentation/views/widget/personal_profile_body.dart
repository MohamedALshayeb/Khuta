import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/styles.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_app_bar_with_arrowBack.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_auth_button.dart';
import 'package:khuta_app/features/profile/presentation/views/widget/custom_text_field_edit_person_data.dart';
import 'package:khuta_app/features/profile/presentation/views/widget/custom_text_field_phone_edit_person.dart';

class PersonalProfileBody extends StatelessWidget {
  const PersonalProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16),
          CustomAppBarWithArrowBack(appBarText: 'الملف الشخصي'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'المعلومات الشخصيه',
                    style: Styles.textStyle18.copyWith(color: kGrayscale950),
                  ),
                ),

                CustomTextFieldEditPersonData(
                  hintText: 'Elapahy',
                  onPressed: () {},
                ),
                CustomTextFieldEditPersonData(
                  hintText: 'Elsapahy@Gmail.com',
                  onPressed: () {},
                ),
                CustomTextFieldPhoneEditPerson(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.26),
                CustomAuthButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  textButtonAuth: 'حفظ التغييرات',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
