import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/assest_data.dart';

class CustomAddChildImg extends StatelessWidget {
  const CustomAddChildImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kGrayBlue9EColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(AssetsData.kAddChildImg),
    );
  }
}
