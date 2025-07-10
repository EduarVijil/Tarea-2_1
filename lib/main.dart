import 'package:app2_1/views/login.dart';
import 'package:app2_1/views/pag1.dart';
import 'package:app2_1/views/registro.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouter(
        initialLocation: '/login',
        routes: [GoRoute(
            name: 'home',
            path: '/home',
            builder: (context, state) => principal(),
            
            routes: [
              GoRoute(
                name: 'regis',
                path: '/regis',
                builder: (context, state) => registro(),
              ),
            ],
          ),

          GoRoute(
            name: 'login',
            path: '/login',
            builder: (context, state) => login(),
          ),
        ],
       )
    );
  }
}
