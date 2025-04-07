import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';

class CustomQuestionChoose extends StatelessWidget {
  const CustomQuestionChoose({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 165,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: kSoftColor),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 16)],
      ),
      child: Center(child: Text('بقدر كبير جدا')),
    );
  }
}
