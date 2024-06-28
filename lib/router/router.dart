import 'package:bhc_app/views/authentication/sign_in_view.dart';
import 'package:bhc_app/views/authentication/sign_up_view.dart';
import 'package:go_router/go_router.dart';
import '../views/authentication/forgot_password_view.dart';
import '../views/authentication/new_password_view.dart';
import '../views/home_view.dart';
import '../views/my_request_view.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/myRequest',
        builder: (context, state) => const MyRequestView(),
      ),
      // GoRoute(
      //   path: '/auth',
      //   routes: [
      //     GoRoute(
      //       path: 'sign_in', // Relative path
      //       builder: (context, state) => const SignIn(),
      //     ),
      //     GoRoute(
      //       path: 'sign_up', // Relative path
      //       builder: (context, state) => const SignUp(),
      //     ),
      //     GoRoute(
      //       path: 'forgot_password', // Relative path
      //       builder: (context, state) => const ForgetPassword(),
      //     ),
      //     GoRoute(
      //       path: 'new_password', // Relative path
      //       builder: (context, state) => const NewPassword(),
      //     ),
      //   ],
      // ),
    ],
  );
}
