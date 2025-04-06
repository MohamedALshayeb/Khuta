import 'package:flutter/material.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.icon,
    required this.text,
    required this.iconButton,
    this.langText = '',
    this.onPressed,
  });

  final Icon icon;
  final String text;
  final Icon iconButton;
  final String? langText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          IconButton(onPressed: onPressed, icon: iconButton),
          Text('$langText'),
          Spacer(),

          Text(text, style: Styles.textStyle13),
          SizedBox(width: 7),

          icon,
        ],
      ),
    );
  }
}
