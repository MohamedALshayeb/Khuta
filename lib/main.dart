import 'package:flutter/material.dart';
import 'package:khuta_app/core/utils/go_router_model.dart';

void main() {
  runApp(const Khuta());
}

class Khuta extends StatelessWidget {
  const Khuta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouterModel.router,
    );
  }
}
