import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/assest_data.dart';

class CustomGoogleAuth extends StatelessWidget {
  const CustomGoogleAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MaterialButton(
        height: 56,
        // color: Colors.amber,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: kLightGreyColor),
          borderRadius: BorderRadius.circular(16),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('تسجيل بواسطة جوجل'),
            SizedBox(width: 53),
            Image.asset(AssetsData.googleIcon),
          ],
        ),
      ),
    );
  }
}
