import 'package:flutter/material.dart';
import 'package:khuta_app/features/profile/presentation/views/widget/personal_profile_body.dart';

class PersonalProfileView extends StatelessWidget {
  const PersonalProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: PersonalProfileBody()));
  }
}
