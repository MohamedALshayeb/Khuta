import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'من خلال إنشاء حساب ، فإنك توافق على',
              style: Styles.textStyle13.copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'الشروط والأحكام الخاصة بنا',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Checkbox(
          side: BorderSide(color: Colors.grey),
          activeColor: kPrimaryColor,
          value: checkBoxValue,
          onChanged: (val) {
            checkBoxValue = val!;
            setState(() {});
          },
        ),
      ],
    );
  }
}
