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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(appBarText, style: Styles.textstyle24),
          SizedBox(width: MediaQuery.of(context).size.width * .08),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(AssetsData.arrowbackImgIcon2),
          ),
        ],
      ),
    );
  }
}
