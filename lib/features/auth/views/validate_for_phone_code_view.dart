import 'package:flutter/material.dart';
import 'package:khuta_app/features/auth/views/widgets/validate_for_phone_code_body.dart';

class ValidateForPhoneCodeView extends StatelessWidget {
  const ValidateForPhoneCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ValidateForPhoneCodeBody()));
  }
}
