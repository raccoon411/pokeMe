import 'package:dokeme/screens/landing_screen.dart';
import 'package:dokeme/screens/main_screen.dart';
import 'package:dokeme/screens/signIn_screen.dart';
import 'package:dokeme/screens/signUp_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
    final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => LandingScreen(),
      ),
      GoRoute(
        path: '/signUp',
        builder: (context, state) => SignUpScreen(),
      ),
      GoRoute(
        path: '/signIn',
        builder: (context, state) => SignInScreen(),
      ),
      GoRoute(
        path: '/main',
        builder: (context, state) => MainScreen(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
    );
  }
}
