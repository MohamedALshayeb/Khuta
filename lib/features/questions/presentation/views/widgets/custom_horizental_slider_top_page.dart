import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';

class CustomHorizentalSliderTopPage extends StatelessWidget {
  const CustomHorizentalSliderTopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
