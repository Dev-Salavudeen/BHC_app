
import 'package:bhc_app/views/authentication/sign_in_view.dart';
import 'package:bhc_app/views/authentication/sign_up_view.dart';
import 'package:bhc_app/views/dashboard_view.dart';
import 'package:go_router/go_router.dart';
import '../views/company_details_view.dart';
import '../views/authentication/forgot_password_view.dart';
import '../views/filter_view.dart';
import '../views/form_view.dart';
import '../views/home_details_view.dart';
import '../views/home_page_view.dart';
import '../views/individual_details_view.dart';
import '../views/authentication/new_password_view.dart';
import '../views/message_home_view.dart';
import '../views/message_view.dart';
import '../views/my_request_view.dart';
import '../views/payment_success_view.dart';
import '../views/profile_view.dart';
import '../views/rent_filter_view.dart';
import '../views/select_payment_method_view.dart';
import '../views/transaction_view.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SignUp(),
      ),
      GoRoute(
        path: '/dashboard_view',
        builder: (context, state) => DashboardView(),
      ),
      GoRoute(
        path: '/company_details_view', // Relative path
        builder: (context, state) => const CompanyDetails(),
      ),
      GoRoute(
        path: '/individual_details_view', // Relative path
        builder: (context, state) => const IndividualDetails(),
      ),
      GoRoute(
        path: '/sign_in_view', // Relative path
        builder: (context, state) => const SignIn(),
      ),
      GoRoute(
        path: '/forgot_password_view', // Relative path
        builder: (context, state) => const ForgotPassword(),
      ),
      GoRoute(
        path: '/new_password_view', // Relative path
        builder: (context, state) => const NewPassword(),
      ),
      GoRoute(
        path: '/home_page_view', // Relative path
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/message_home_view', // Relative path
        builder: (context, state) =>  MessageHomeView(),
      ),
      GoRoute(
        path: '/message_view', // Relative path
        builder: (context, state) =>  MessagePage(),
      ),
      GoRoute(
        path: '/rent_filter_view', // Relative path
        builder: (context, state) => const RentFilter(),
      ),
      GoRoute(
        path: '/filter_view', // Relative path
        builder: (context, state) => const FilterPage(),
      ),
      GoRoute(
        path: '/home_details_view', // Relative path
        builder: (context, state) => const HomeDetailsView(),
      ),
      GoRoute(
        path: '/form_view', // Relative path
        builder: (context, state) => StepperPage(),
      ),
      GoRoute(
        path: '/select_payment_method_view', // Relative path
        builder: (context, state) => SelectPaymentPage(),
      ),
      GoRoute(
        path: '/payment_success_view', // Relative path
        builder: (context, state) => PaymentDoneView(),
      ),
      /*GoRoute(
        path: '/profile_view', // Relative path
        builder: (context, state) => ProfileView(),
      ),*/
      GoRoute(
        path: '/transaction_view', // Relative path
        builder: (context, state) => TransactionPage(),
      ),
      GoRoute(
        path: '/myRequest',
        builder: (context, state) => const MyRequestView(),
      ),
    ],
  );
}