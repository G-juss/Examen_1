import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AppRouter.router.routerDelegate,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      title: 'drawer',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menú Principal')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Opciones',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('Noticias'),
              onTap: () {
                context.go('/noticias');
              },
            ),
            ListTile(
              leading: Icon(Icons.checklist),
              title: Text('Lista de Tareas'),
              onTap: () {
                context.go('/todo');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Bienvenido Estudiante'),
      ),
    );
  }
}
