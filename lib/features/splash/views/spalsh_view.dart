import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khuta_app/core/utils/go_router_model.dart';
import 'package:khuta_app/core/utils/styles.dart';

class SpalchView extends StatefulWidget {
  const SpalchView({super.key});

  @override
  State<SpalchView> createState() => _SpalchViewState();
}

class _SpalchViewState extends State<SpalchView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  // late Animation<Offset> slidingTransition;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    // slidingTransition = Tween(
    //   begin: const Offset(0, 6),
    //   end: Offset.zero,
    // ).animate(animationController);
    // animationController.forward();

    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).pushReplacement(GoRouterModel.kOnBoarding);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {
          return Center(
            child: Text(
              'خُطى',
              style: Styles.textstyle64.copyWith(fontFamily: 'Poppins'),
            ),
          );
        },
      ),
    );
  }
}
