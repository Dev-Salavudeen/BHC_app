import 'package:bhc_app/router/router.dart';
import 'package:flutter/material.dart';

class BhcApp extends StatelessWidget {
  const BhcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.router,
    );
  }
}
