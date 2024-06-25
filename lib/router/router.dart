import 'package:go_router/go_router.dart';

import '../features/home_view.dart';
import '../features/my_request_view.dart';

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
    ],
  );
}
