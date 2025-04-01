import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khuta_app/core/utils/go_router_model.dart';
import 'package:khuta_app/core/utils/styles.dart';
import 'package:khuta_app/features/auth/views/widgets/custom_auth_button.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.15),
        Center(
          child: Text(
            'مقياس كونرز لتقدير سلوك الطفل',
            style: Styles.textstyle24.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.17),
        CustomAuthButton(
          onPressed: () {
            GoRouter.of(
              context,
            ).push(GoRouterModel.kNavigateToParentAndTeacherView);
          },
          textButtonAuth: 'تقدير المعلم',
        ),
        SizedBox(height: 44),
        CustomAuthButton(
          onPressed: () {
            GoRouter.of(
              context,
            ).push(GoRouterModel.kNavigateToParentAndTeacherView);
          },
          textButtonAuth: 'تقدير الوالدين',
        ),
      ],
    );
  }
}
