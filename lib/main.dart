import 'package:untitled/route/app_router.dart';
import 'package:untitled/screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:untitled/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //home:MenuScreen(),
      initialRoute: AppRouter.initialRoute,
      routes: AppRouter.getAppRoutes(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      theme: AppTheme.ThemaApp,
    );
  }
}