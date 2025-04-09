import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/assest_data.dart';
import 'package:khuta_app/core/utils/styles.dart';
import 'package:khuta_app/features/questions/presentation/views/widgets/custom_button_next_and_previous.dart';
import 'package:khuta_app/features/questions/presentation/views/widgets/custom_horizental_slider_top_page.dart';
import 'package:khuta_app/features/questions/presentation/views/widgets/custom_question_text_choose.dart';

class QuestionBody extends StatelessWidget {
  const QuestionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        CustomHorizentalSliderTopPage(),
        SizedBox(height: 40),
        Container(
          decoration: BoxDecoration(
            color: kGrayBlue9EColor,
            borderRadius: BorderRadius.circular(34),
          ),
          child: Image.asset(AssetsData.kQuestionImgImg),
        ),
        SizedBox(height: 35),

        Text('لا ينسجم مع الاطفال الاخرين', style: Styles.textstyle24),

        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.volume_up_outlined, color: kPrimaryColor),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomQuestionChoose(questionText: 'مطلقا  '),
                CustomQuestionChoose(questionText: 'بقدر كبير جدا'),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                CustomQuestionChoose(questionText: 'بقدر محدود'),

                CustomQuestionChoose(questionText: 'بقدر كبير'),
              ],
            ),
          ],
        ),

        SizedBox(height: MediaQuery.of(context).size.height * 0.15),
        CustomButtonNextAndPrevious(),
      ],
    );
  }
}
