import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khuta_app/core/utils/go_router_model.dart';
import 'package:khuta_app/core/widget/custom_text_form_field.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_app_bar_with_arrowBack.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_auth_button.dart';
import 'package:khuta_app/features/home/presentation/view/widgets/custom_add_child_img.dart';
import 'package:khuta_app/features/home/presentation/view/widgets/custom_button_to_add_child_img.dart';

class AddChildDataBody extends StatelessWidget {
  const AddChildDataBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 34),
          CustomAppBarWithArrowBack(appBarText: 'بيانات الطفل'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          CustomAddChildImg(),

          CustomButtonToAddChildImg(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),

          CustomTextFormField(labelText: 'الاسم كامل'),
          CustomTextFormField(labelText: 'النوع'),
          CustomTextFormField(labelText: 'العنوان'),
          CustomTextFormField(labelText: 'تاريخ الميلاد'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),

          CustomAuthButton(
            onPressed: () {
              //temporarily
              GoRouter.of(context).push(GoRouterModel.kNavigateToQuestionView);
            },
            textButtonAuth: 'التالي',
          ),
        ],
      ),
    );
  }
}
