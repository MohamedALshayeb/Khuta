import 'package:flutter/material.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_app_bar_with_arrowBack.dart';
import 'package:khuta_app/features/profile/presentation/views/widget/Custom_details_about_profile.dart';
import 'package:khuta_app/features/profile/presentation/views/widget/custom_person_data.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  // final bool valueChange;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 17),
        CustomAppBarWithArrowBack(appBarText: 'حسابي'),
        SizedBox(height: 13),
        CustomPersonData(),
        SizedBox(height: 16),
        CustomDetailsAboutProfile(),
      ],
    );
  }
}
