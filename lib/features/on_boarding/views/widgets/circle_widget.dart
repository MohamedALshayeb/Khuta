import 'package:flutter/material.dart';

class CirculeWidget extends StatelessWidget {
  const CirculeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 9,
      width: 9,

      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(9),
      ),
    );
  }
}
