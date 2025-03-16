import 'package:flutter/material.dart';
import 'package:khuta_app/core/utils/styles.dart';

class OrTextDivider extends StatelessWidget {
  const OrTextDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        divider(context),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'أو',
            style: Styles.textstyle16.copyWith(color: Colors.grey[950]),
          ),
        ),
        divider(context),
      ],
    );
  }

  SizedBox divider(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .43,
      child: Divider(thickness: 1, color: Color(0xffDDDFDF)),
    );
  }
}
