import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';
// import 'package:khuta/core/utils/assest_data.dart';

class OnBoardingImageSection extends StatelessWidget {
  const OnBoardingImageSection({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 390,
          width: 394,
          decoration: BoxDecoration(
            color: Color(0xffFAFAFA),
            image: DecorationImage(image: AssetImage(image)),
          ),
        ),
        Positioned(
          right: 0,
          child: MaterialButton(
            onPressed: () {},
            child: Container(
              height: 38,
              width: 86,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: kPrimaryColor,
              ),
              child: const Center(
                child: Text('Skip', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
