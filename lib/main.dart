import 'package:flutter/material.dart';
import 'package:login_register/Dashboard.dart';
import 'package:login_register/MainPage.dart';
import 'package:login_register/about_user.dart';
import 'package:login_register/contact_us.dart';
import 'package:login_register/email.dart';
import 'package:login_register/login.dart';
import 'package:login_register/splash.dart';
import 'package:login_register/verify.dart';
import 'package:login_register/password.dart';
import 'package:login_register/wifi_page.dart';

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
        'mainpage':(context) => const MainPage(),
        'wifi':(context) => const UpdateWiFi(),
        'about':(context) => const AboutUser(),
        'contact':(context) => const ContactUs(),
        'dashboard':(context) => const UserProfile(),
      },
    );
  }
}
