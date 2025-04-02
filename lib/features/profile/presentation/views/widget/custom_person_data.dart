import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/assest_data.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomPersonData extends StatelessWidget {
  const CustomPersonData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Spacer(),
        Expanded(
          child: ListTile(
            title: Text(
              'Elsapahy',
              style: Styles.textStyle18.copyWith(color: kGunmetalBlue46Color),
            ),
            subtitle: Text(
              'Gmail@mail.com',
              style: Styles.textStyle13.copyWith(color: kCoolGrayA0Color),
            ),
          ),
        ),
        SizedBox(
          height: 90,
          width: 90,
          child: Stack(
            children: [
              Image.asset(AssetsData.kPersonProfileImg2),

              Positioned(
                bottom: 0,
                left: 17,
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    AssetsData.kCameraProfileImg,
                    // height: 30,
                    // width: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
