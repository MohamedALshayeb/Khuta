import 'package:flutter/material.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_app_bar_with_arrowBack.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 17),
        CustomAppBarWithArrowBack(appBarText: 'حسابي'),
      ],
    );
  }
}
