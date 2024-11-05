import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'noticias_page.dart';
import 'todo_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/noticias',
    routes: [
      GoRoute(
        path: '/noticias',
        builder: (context, state) => NoticiasPage(),
      ),
      GoRoute(
        path: '/todo',
        builder: (context, state) => TodoPage(),
      ),
    ],
  );
}
