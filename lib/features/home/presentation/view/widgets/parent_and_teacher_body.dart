import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/assest_data.dart';
import 'package:khuta_app/core/utils/styles.dart';
import 'package:khuta_app/features/home/presentation/view/widgets/custom_text_field_search.dart';

class ParentAndTeacherBody extends StatelessWidget {
  const ParentAndTeacherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        CustomTextFieldSearch(),
        SizedBox(height: 69),
        Image.asset(AssetsData.kParentandteacherImg),
        SizedBox(height: 188),
        CustomButtonAddChild(),
      ],
    );
  }
}

class CustomButtonAddChild extends StatelessWidget {
  const CustomButtonAddChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kSoftColor,
        boxShadow: [BoxShadow(blurRadius: 16, color: Colors.black26)],
      ),
      width: 216,
      height: 66,
      // color: Colors.amber,
      child: MaterialButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'اضافة طفل',
              style: Styles.textstyle24.copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(width: 16),
            Icon(Icons.add_circle_outline, color: kPrimaryColor, size: 41),
          ],
        ),
      ),
    );
  }
}
