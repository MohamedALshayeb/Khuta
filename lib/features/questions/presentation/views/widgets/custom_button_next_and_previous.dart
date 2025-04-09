import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomButtonNextAndPrevious extends StatelessWidget {
  const CustomButtonNextAndPrevious({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 44,
          width: 119,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: kBlackGreyColor, width: 2),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              '<  السابق',
              style: Styles.textStyle18.copyWith(color: kBlackGreyColor),
            ),
          ),
        ),

        Container(
          height: 44,
          width: 208,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
          ),
          child: TextButton(
            onPressed: () {},
            child: Text('التالي', style: Styles.textStyle18),
          ),
        ),
      ],
    );
  }
}
