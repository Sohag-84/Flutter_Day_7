import 'package:day_7/screens/profile_screen.dart';
import 'package:day_7/screens/sign_in_screen.dart';
import 'package:day_7/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: const Color(0xffE0E2F9),
      routes: {
        "/login_screen":(context)=>LogInScreen(),
        "/signup_screen":(context)=>RegistrationScreen(),
        "/profile_screen":(context)=>ProfileScreen(),
      },
      home: LogInScreen()
    );
  }
}
