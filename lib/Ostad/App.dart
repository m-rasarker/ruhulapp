import 'package:flutter/material.dart';

import 'Registration.dart';
import 'flutter_class_1.dart';
import 'flutter_class_2.dart';
import 'form_login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'batch 10 flutter',
       home: LoginPage(),
       // home: Registration(),

    );
  }
}


