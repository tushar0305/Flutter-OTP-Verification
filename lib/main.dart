import 'package:flutter/material.dart';
// import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:login_register/email.dart';
import 'package:login_register/login.dart';
import 'package:login_register/splash.dart';
import 'package:login_register/verify.dart';
import 'package:login_register/Password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      initialRoute: 'splash',
      // home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        'email': (context) => const MyEmail(),
        'verify': (context) => const MyVerify(),
        'password':(context) => const MyPassword(),
        'login':(context) => const MyLogin(),
        'splash':(context) => const SplashScreen(),
      },
    );
  }
// }
}
