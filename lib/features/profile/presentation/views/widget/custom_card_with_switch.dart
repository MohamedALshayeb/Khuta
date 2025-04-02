import 'package:flutter/material.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomCardWithSwitch extends StatelessWidget {
  final bool valueChange;
  final void Function(bool)? onChanged;
  final String text;
  final Icon icon;

  const CustomCardWithSwitch({
    super.key,
    required this.valueChange,
    this.onChanged,
    required this.text,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Switch(
            value: valueChange,
            onChanged: onChanged,
            activeTrackColor: kPrimaryColor,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: kLightGreyColor,
          ),
          Spacer(),

          Text(text, style: Styles.textStyle13),
          SizedBox(width: 7),

          icon,
        ],
      ),
    );
  }
}
