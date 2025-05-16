import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhul_app/Ostad/widget/practice.dart';

import '../Pages/TestPage.dart';
import '../Pages/class_2.dart';
import 'Registration.dart';
import 'Responsive.dart';
import 'assignRuhul.dart';
import 'flutter_class_1.dart';
import 'flutter_class_2.dart';
import 'form_login.dart';
import 'module 9 class 3.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',

          // You can use the library anywhere in the app even in theme
          home: child,
        );
      },
   //   child: const Responsive(),
        child: const assignRuhul(),

    );
  }

}
