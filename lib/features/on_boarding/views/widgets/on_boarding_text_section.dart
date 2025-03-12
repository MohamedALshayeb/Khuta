import 'package:flutter/material.dart';
import 'package:khuta_app/core/utils/styles.dart';

class OnBoardingTextSection extends StatelessWidget {
  const OnBoardingTextSection({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: Styles.textstyle24),
        Text(description, style: Styles.textstyle16),
      ],
    );
  }
}
