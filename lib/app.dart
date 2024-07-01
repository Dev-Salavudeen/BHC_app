import 'package:bhc_app/router/router.dart';
import 'package:bhc_app/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BhcApp extends StatelessWidget {
  const BhcApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (context) => AuthViewModel()),
    //   ],
    //   child: const MaterialApp(
    //     home: HomeView(),
    //   ),
    // );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router,
    );
  }
}
