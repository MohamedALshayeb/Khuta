import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khuta_app/constants.dart';
import 'package:khuta_app/core/utils/go_router_model.dart';
import 'package:khuta_app/core/utils/styles.dart';

class CustomButtonAddChild extends StatelessWidget {
  const CustomButtonAddChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kSoftColor,
        boxShadow: [BoxShadow(blurRadius: 16, color: Colors.black26)],
      ),
      width: 216,
      height: 66,
      // color: Colors.amber,
      child: MaterialButton(
        onPressed: () {
          GoRouter.of(context).push(GoRouterModel.kNavigateToAddChilDdataView);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'اضافة طفل',
              style: Styles.textstyle24.copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(width: 16),
            Icon(Icons.add_circle_outline, color: kPrimaryColor, size: 41),
          ],
        ),
      ),
    );
  }
}
