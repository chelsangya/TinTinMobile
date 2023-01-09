import 'package:flutter/material.dart';
import 'package:tintin/screens/home_screen.dart';
import 'package:tintin/screens/login.dart';
import 'package:tintin/screens/register.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: LoginScreen(),
    //
    // );
    return MaterialApp(
      title: "TinTin",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    initialRoute: "/login",
    routes:{
      "/login" : (BuildContext context) => LoginScreen(),
      "/register" : (BuildContext context) => RegisterScreen(),
      "/homescreen":(BuildContext context)=>HomeScreen(),
    }
    );

  }

}
