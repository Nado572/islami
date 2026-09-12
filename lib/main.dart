import 'package:flutter/material.dart';
import 'package:islamy/core/routesmanager.dart';

void main() {
  runApp(Islami());
}
class Islami extends StatelessWidget {
  const Islami({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: RoutesManager.routes,
      initialRoute: RoutesManager.home,
    );
  }
}


