import 'package:flutter/material.dart';
import 'package:khuta_app/features/auth/views/widgets/create_new_pass_body.dart';

class CreateNewPassView extends StatelessWidget {
  const CreateNewPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: CreateNewPassBody()));
  }
}
