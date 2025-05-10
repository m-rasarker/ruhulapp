import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhul_app/Ostad/UIContents/ContainerPage.dart';
import 'package:ruhul_app/Ostad/UIContents/MobileResposive.dart';
import 'package:ruhul_app/Ostad/widget/practice.dart';

import '../Pages/TestPage.dart';
import '../Pages/class_2.dart';
import 'Calender.dart';
import 'Registration.dart';
import 'Responsive.dart';
import 'UIContents/MediaQuery.dart';
import 'flutter module 9 class -1.dart';
import 'flutter_class_1.dart';
import 'flutter_class_2.dart';
import 'form_login.dart';
import 'layoutbuild.dart';
import 'module_9_class_2.dart';
import 'module_9_mediaQuery.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'batch 10 flutter',
//       // home: LoginPage(),
//      //   home: Practice(),
//    //     home: Calender(),
//         home: ModuleNineClassTwo(),
//
//       //  home: TestPage(),
//       //  home:   class_2(),
//        // home: Registration(),
//
//     );
//   }
// }




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
    //  child: const ModuleNineClassTwo(),
     //   child: const         Responsive(),
     //
     //   child: const         layoutBuild(),
    //  child: const         Containerpage(),
    //  child: const         Mobileresposive(),
      child: const         Mediaquery(),
    //  child: const         TodoApp(),
    );
  }

}



