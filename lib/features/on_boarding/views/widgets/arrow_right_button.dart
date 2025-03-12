import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/go_router_model.dart';

class ArrowRightButton extends StatelessWidget {
  const ArrowRightButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: kPrimaryColor,
          ),
        ),
        Positioned(
          top: 6,
          right: 6,
          bottom: 6,
          left: 6,
          child: Container(
            height: 63,
            width: 63,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          left: 10,
          bottom: 10,
          child: Container(
            height: 54,
            width: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: kPrimaryColor,
            ),
            child: IconButton(
              onPressed: () {
                GoRouter.of(
                  context,
                ).pushReplacement(GoRouterModel.kNavigateToAuth);
              },
              icon: Icon(Icons.arrow_forward, color: kSoftColor, size: 29),
            ),
          ),
        ),
      ],
    );
  }
}
