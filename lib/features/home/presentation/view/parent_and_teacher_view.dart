import 'package:flutter/material.dart';
import 'package:khuta_app/features/home/presentation/view/widgets/parent_and_teacher_body.dart';

class ParentAndTeacherView extends StatelessWidget {
  const ParentAndTeacherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ParentAndTeacherBody()));
  }
}
