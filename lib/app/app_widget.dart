import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Slidy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
        primary:const Color.fromARGB(255, 101, 187, 88) ,
        secondary: const Color.fromARGB(255, 255, 193, 143)),
        inputDecorationTheme: InputDecorationTheme(hoverColor: Colors.red),
        elevatedButtonTheme: ElevatedButtonThemeData(style: TextButton.styleFrom(
          elevation: 20,
          shadowColor: Colors.black,
        ))
        ), 
      routerDelegate: Modular.routerDelegate, 
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}