import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_register/phone.dart';
import 'package:login_register/verify.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    return MaterialApp(
      initialRoute: 'phone',
      debugShowCheckedModeBanner: false,
      routes: {
        'phone': (context) => const MyPhone(),
        'verify': (context) => const MyVerify()
      },
    );
  }
// }
}
