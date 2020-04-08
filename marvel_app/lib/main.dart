import 'package:flutter/material.dart';
import 'package:marvel_app/screens/tabs_screen.dart';
import 'package:marvel_app/utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito',
        primarySwatch: Colors.pink,
      ),
      initialRoute: AppRoutes.HOME,  
      routes: { 
        AppRoutes.HOME: (ctx) => TabsScreen(),
      } 
    );
  }
}