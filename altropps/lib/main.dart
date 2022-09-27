import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Pages/Onboarding_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



void main() async{
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent, statusBarColor: Colors.transparent));
    return MaterialApp(
      home: OnBoardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }





}


