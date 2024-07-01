import 'package:bhc_app/views/authentication/sign_in_view.dart';
import 'package:bhc_app/views/authentication/sign_up_view.dart';
import 'package:bhc_app/views/dashboard_view.dart';
import 'package:go_router/go_router.dart';
import '../views/company_details_view.dart';
import '../views/authentication/forgot_password_view.dart';
import '../views/filter_view.dart';
import '../views/form_view.dart';
import '../views/home_page_view.dart';
import '../views/individual_details_view.dart';
import '../views/authentication/new_password_view.dart';
import '../views/my_request_view.dart';
import '../views/rent_filter_view.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const DashboardView(),
      ),
      GoRoute(
        path: '/company_details_view',
        builder: (context, state) => const CompanyDetails(),
      ),
      GoRoute(
        path: '/individual_details_view',
        builder: (context, state) => const IndividualDetails(),
      ),
      GoRoute(
        path: '/sign_in_view',
        builder: (context, state) => const SignIn(),
      ),
      GoRoute(
        path: '/forgot_password_view',
        builder: (context, state) => const ForgotPassword(),
      ),
      GoRoute(
        path: '/new_password_view',
        builder: (context, state) => const NewPassword(),
      ),
      GoRoute(
        path: '/home_page_view',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/rent_filter_view',
        builder: (context, state) => const RentFilter(),
      ),
      GoRoute(
        path: '/filter_view',
        builder: (context, state) => const FilterPage(),
      ),
      GoRoute(
        path: '/form_view',
        builder: (context, state) => StepperPage(),
      ),
      GoRoute(
        path: '/myRequest',
        builder: (context, state) => const MyRequestView(),
      ),
    ],
  );
}
