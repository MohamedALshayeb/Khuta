import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        Text(title, style: GoogleFonts.poppins(textStyle: Styles.textstyle24)),
        Text(description, style: Styles.textstyle16),
      ],
    );
  }
}

//Styles.textstyle24
