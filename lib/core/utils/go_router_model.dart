import 'package:go_router/go_router.dart';
import 'package:khuta_app/features/auth/views/Register_view.dart';
import 'package:khuta_app/features/auth/views/create_new_pass_view.dart';
import 'package:khuta_app/features/auth/views/log_in_view.dart';
import 'package:khuta_app/features/auth/views/forget_pass_view.dart';
import 'package:khuta_app/features/auth/views/validate_for_phone_code_view.dart';
import 'package:khuta_app/features/home/presentation/view/home_view.dart';
import 'package:khuta_app/features/home/presentation/view/parent_and_teacher_view.dart';
import 'package:khuta_app/features/on_boarding/views/page_view.dart';
import 'package:khuta_app/features/splash/views/spalsh_view.dart';

abstract class GoRouterModel {
  static const kOnBoarding = '/page_view';
  static const kNavigateToAuth = '/auth';
  static const kNavigateToRegisterView = '/register_view';
  static const kNavigateToForgetPassView = '/forget_pass_view';
  static const kNavigateToValidatePhoneCodeView =
      '/validate_for_phone_code_view';
  static const kNavigateToCreateNewPassView = '/create_new_pass_view';
  static const kNavigateToHomeView = '/home_view';
  static const kNavigateToParentAndTeacherView = '/parent_and_teacher_view';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SpalchView()),
      GoRoute(
        path: kOnBoarding,
        builder: (context, state) => const PageViewWidget(),
      ),
      GoRoute(path: kNavigateToAuth, builder: (context, state) => LogInView()),
      GoRoute(
        path: kNavigateToRegisterView,
        builder: (context, state) => RegisterView(),
      ),
      GoRoute(
        path: kNavigateToForgetPassView,
        builder: (context, state) => ForgetPassView(),
      ),
      GoRoute(
        path: kNavigateToValidatePhoneCodeView,
        builder: (context, state) => ValidateForPhoneCodeView(),
      ),
      GoRoute(
        path: kNavigateToCreateNewPassView,
        builder: (context, state) => CreateNewPassView(),
      ),
      GoRoute(
        path: kNavigateToHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kNavigateToParentAndTeacherView,
        builder: (context, state) => ParentAndTeacherView(),
      ),
    ],
  );
}
