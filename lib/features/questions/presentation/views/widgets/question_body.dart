import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/assest_data.dart';
import 'package:khuta_app/core/utils/styles.dart';
import 'package:khuta_app/features/questions/presentation/views/widgets/custom_question_text_choose.dart';

class QuestionBody extends StatelessWidget {
  const QuestionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 13),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Container(
                  height: 9,
                  width: 20,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              Container(
                height: 21,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kBaSilverSandColor.withOpacity(.35),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 34),
        Container(
          decoration: BoxDecoration(
            color: kGrayBlue9EColor,
            borderRadius: BorderRadius.circular(34),
          ),
          child: Image.asset(AssetsData.kQuestionImgImg),
        ),
        SizedBox(height: 26),

        Text('لا ينسجم مع الاطفال الاخرين', style: Styles.textstyle24),

        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.volume_up_outlined, color: kPrimaryColor),
          ),
        ),
        SizedBox(height: 10),
        Column(
          children: [
            Row(children: [CustomQuestionChoose()]),
          ],
        ),

        // SizedBox(
        //   height: 104,
        //   child: GridView(
        //     // physics: NeverScrollableScrollPhysics(),
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2,
        //     ),
        //     children: [
        //       Container(
        //         height: 20,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(16),
        //           color: Colors.amber,
        //         ),
        //         child: Text(
        //           'بقدر كبير جدا',
        //           style: TextStyle(color: Colors.blue),
        //         ),
        //       ),
        //       Container(
        //         height: 20,

        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(16),
        //           color: Colors.amber,
        //         ),
        //         child: Text(
        //           'بقدر كبير جدا',
        //           style: TextStyle(color: Colors.blue),
        //         ),
        //       ),
        //       Container(
        //         height: 20,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(16),
        //           color: Colors.amber,
        //         ),
        //         child: Text(
        //           'بقدر كبير جدا',
        //           style: TextStyle(color: Colors.blue),
        //         ),
        //       ),
        //       Container(
        //         height: 20,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(16),
        //           color: Colors.amber,
        //         ),
        //         child: Text(
        //           'بقدر كبير جدا',
        //           style: TextStyle(color: Colors.blue),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // SizedBox(height: 170),
      ],
    );
  }
}
