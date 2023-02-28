import 'package:flutter/material.dart';
import 'package:route_argument/pages/field_page.dart';
import 'package:route_argument/pages/page_home.dart';
import 'package:route_argument/pages/show_field.dart';
import 'package:route_argument/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      onGenerateRoute: Routes.generateRoutes
    );
  }
}
