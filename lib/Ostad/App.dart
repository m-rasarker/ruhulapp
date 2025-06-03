import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhul_app/Ostad/LiveTest.dart';
import 'package:ruhul_app/Ostad/Module_11/Alert.dart';
import 'package:ruhul_app/Ostad/widget/practice.dart';

import '../Pages/TestPage.dart';
import '../Pages/class_2.dart';
import 'Module_11/Alert_.dart';
import 'Module_11/calculatorApp.dart';
import 'Module_11/waterTracker.dart';
import 'Module_12/Class_3_API_Integration.dart';
import 'Module_12/ExpenseTracker.dart';
import 'Module_12/ToDoApp.dart';
import 'Registration.dart';
import 'Responsive.dart';
import 'UIContents/practice.dart';
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
    //  child: const Responsive(),
    //    child: const assignRuhul(),
      //     child: const FlutterClass2(),
     // child: const LoginPage(),

    //   child: const practice(),
     //   child: const Livetest(),
     //   child: const Alert(),
       // child: const Alertpractic(),
      //  child: const CalculatorApp(),
     //   child: const WaterTracker(),
  //      child: const ExpenseTracker(),
 // child: const TodoScreen(),

        child: const Module12Class3(), // APi Integration



    );
  }

}
