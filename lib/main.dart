import 'package:flutter/material.dart';
import 'package:task/config/routes/routes.dart';

import 'views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BSNL APP",
      initialRoute: '/',
      onGenerateRoute: AppRoutes.generateRoute,
      home: HomeScreen(),
    );
  }
}
