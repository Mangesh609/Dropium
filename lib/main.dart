import 'package:dropium/Screens/admin_home_page.dart';
import 'package:dropium/Screens/admin_login_screen.dart';
import 'package:dropium/Screens/login_screen.dart';
import 'package:dropium/Screens/register_screen.dart';
import 'package:dropium/Screens/splash_screen.dart';
import 'package:dropium/Screens/user_home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
await  Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>SplashScreen(),
        '/login':(context)=>LoginScreen(),
        '/register':(context)=>RegisterScreen(),
        '/admin_login':(context)=>AdminLoginScreen(),
        '/admin_home':(context)=>AdminHomeScreen(),
        '/user_home':(context)=>UserHomeScreen(),
      },
    );
  }

}
