import 'package:cars/screens/main_page.dart';
import 'package:cars/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cars/auth_controller.dart';
import 'package:cars/screens/login_page.dart';
import 'package:cars/screens/signup_page.dart';
import 'package:cars/screens/welcome_page.dart';
import 'package:get/get.dart';
import 'screens/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final String title = 'Cars';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cars',
        theme: ThemeData(primaryColor: Color.fromRGBO(234, 234, 234, 1)),
        home: SplashScreen());
  }
}
