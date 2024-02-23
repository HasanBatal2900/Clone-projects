import 'package:fitness_app/Compents/DashBoardScreen.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/Compents/HomeScreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.id,
        routes: {
          HomeScreen.id: (context) =>const HomeScreen(),
          DashBoard.id: (context) =>const DashBoard(),
        });
  }
}
