import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splash_screen/Role.dart';
import 'package:splash_screen/SplashScreen.dart';
import 'package:splash_screen/appliedjob_screen.dart';
import 'package:splash_screen/confirmedjob_screen.dart';
import 'package:splash_screen/createaccount.dart';
import 'package:splash_screen/home_screen.dart';
import 'package:splash_screen/jobboard_screen.dart';
import 'package:splash_screen/loginInfluencer.dart';
import 'profile_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:  Colors.yellow
      ),
      home: Splashscreen(),
    );
  }
}




