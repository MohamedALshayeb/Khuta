import 'package:flutter/material.dart';
import 'package:khuta_app/features/profile/presentation/views/widget/profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ProfileBody()));
  }
}
