import 'package:flutter/material.dart';
import 'package:khuta_app/core/utils/assest_data.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomAppBarWithArrowBack extends StatelessWidget {
  const CustomAppBarWithArrowBack({super.key, required this.appBarText});
  final String appBarText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 3),

          Text(appBarText, style: Styles.textstyle24),

          SizedBox(width: MediaQuery.of(context).size.width * .08),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 16)],
              ),
              child: Image.asset(AssetsData.arrowbackImgIcon2),
            ),
          ),
        ],
      ),
    );
  }
}
