import 'package:flutter/material.dart';

import 'package:khuta_app/features/on_boarding/views/widgets/arrow_right_button.dart';
import 'package:khuta_app/features/on_boarding/views/widgets/on_boarding_image_section.dart';
import 'package:khuta_app/features/on_boarding/views/widgets/on_boarding_text_section.dart';
import 'package:khuta_app/features/on_boarding/views/widgets/circle_widget.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({
    super.key,
    required this.img,
    required this.title,
    required this.desc,
  });

  final String img;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //! Image Section
            OnBoardingImageSection(image: img),
            // SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(blurRadius: 16, color: Colors.black26),
                    BoxShadow(spreadRadius: 0),
                  ],
                  borderRadius: BorderRadius.circular(24),
                  color: Color(0xffFAFAFA),
                ),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    //! Text Section
                    OnBoardingTextSection(title: title, description: desc),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.21),
                    //! Circule & arrow Button Section
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          CirculeWidget(),
                          SizedBox(width: 3),
                          CirculeWidget(),
                          SizedBox(width: 3),
                          CirculeWidget(),
                          Spacer(),
                          ArrowRightButton(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
