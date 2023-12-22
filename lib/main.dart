
import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/Splash.dart';
import 'package:flutter_demo/screens/cart.dart';
import 'package:flutter_demo/screens/detail.dart';

import 'package:flutter_demo/screens/home.dart';
import 'package:flutter_demo/screens/login.dart';
import 'package:flutter_demo/utils/routes.dart';
import 'package:flutter_demo/widgets/MyTheme.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Splash(),
      themeMode: ThemeMode.light,
      theme: MyTheme.themedata(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) =>const Login(),
        MyRoutes.detailRoute: (context) => Detail(),
        MyRoutes.cartRoute: (context) =>const Cart(),
      },
    );
  }
}
