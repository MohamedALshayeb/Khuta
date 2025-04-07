import 'package:flutter/material.dart';
import 'package:khuta_app/features/questions/presentation/views/widgets/question_body.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: QuestionBody()));
  }
}
