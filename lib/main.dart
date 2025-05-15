import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:ruhul_app/Pages/homeScreen.dart';
import 'package:ruhul_app/Pages/TestPage.dart';
import 'Ostad/App.dart';
import 'Ostad/flutter_class_2.dart';
import 'style/style.dart';
import 'function/function.dart';


void main() {
  runApp(
      DevicePreview(
        enabled: true,
        builder: (context)=> const MyApp(),
      )
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.teal,
//         inputDecorationTheme: const InputDecorationTheme(
//           border: OutlineInputBorder(),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.teal, width: 2.0),
//           ),
//           labelStyle: TextStyle(color: Colors.teal),
//         ),
//       ),
//       debugShowCheckedModeBanner: false,
//    //  home: MyHomepage(),
//    //   home: const HomeScreen(),
//     //   home: const TestPage(),
//
//          home: const FlutterClass2(),
//     );
//   }
// }
//
// class MyHomepage extends StatelessWidget {
//   MyHomepage({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     final mediaWidth =MediaQuery.of(context).size.width/2.0;
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Page'),
//           toolbarHeight: 60,
//           titleTextStyle: const TextStyle(color: Colors.red),
//           backgroundColor:Colors.green,
//           actions: [IconButton(onPressed: (){ MySnackBar('Home action', context);}, icon: const Icon(Icons.home)),
//             IconButton(onPressed: (){ MySnackBar('Alerm action', context);}, icon: const Icon(Icons.alarm))
//
//           ],
//         ),
//
//         drawer: Drawer(
//           child: ListView(
//             children: [const DrawerHeader(child: Text('Ruhul Amin')),
//               ListTile(leading:const Icon(Icons.home), title: const Text('Home'),onTap: (){ MySnackBar('Home Drawer', context);},),
//               ListTile(leading:const Icon(Icons.settings),title: const Text('Settings'),onTap: (){ MySnackBar('Settings Drawer', context);}),
//               ListTile(leading:const Icon(Icons.person), title: const Text('Profile'),onTap: (){ MySnackBar('Profile Drawer', context);})],
//
//                       ),
//
//                   ),
//         bottomNavigationBar: BottomNavigationBar(
//           items: [const BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
//             const BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings')],
//           onTap: (int index){
//             if (index==0)
//             {
//               MySnackBar('Home $index' , context);
//             }
//             else if (index==1)
//             {
//               MySnackBar('Setting $index' , context);
//             }
//           }
//           ,
//         ),
//         floatingActionButton: FloatingActionButton(
//           elevation: 5,
//           backgroundColor: Colors.green,
//           child:const Icon(Icons.add),
//           onPressed: (){MySnackBar('I am Floating Action Button', context);},
//
//
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Column(
//             // children: [
//             //   Padding(padding: EdgeInsets.all(10),
//             //   child:  TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'First Name' )),
//             //   ),
//
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(padding: EdgeInsets.all(10)),
//               TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "name",hintText: "Name"),),
//               Padding(padding: EdgeInsets.all(10)),
//               TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "name",hintText: "Name"),),
//
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(0,20,0,0),
//                 child: Row(
//
//                   children: [
//                     SizedBox(
//                       height: 50,
//                     width: mediaWidth-10,
//
//                         child: const Padding(
//                           padding: EdgeInsets.fromLTRB(0,0,10,0),
//                           child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "name",hintText: "Name"),),
//                         )),
//                     SizedBox(
//                         height: 50,
//                         width: mediaWidth-10,
//
//                         child: const TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "name",hintText: "Name"),)),
//
//                   ],
//                 ),
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(0,20,0,0),
//                 child: Row(
//
//                   children: [
//                     Container(
//                         height: 50,
//                         width: mediaWidth-10,
//
//                         child: Padding(
//                           padding: EdgeInsets.fromLTRB(0,0,10,0),
//                           child: ElevatedButton( onPressed: (){MySnackBar("Check Button",context);}, style: buttonStyle, child: Text('Save'),) ,)),
//                     Container(
//                         height: 50,
//                         width: mediaWidth-10,
//                         child: const TextField(style: textStyle, decoration: InputDecoration(border: OutlineInputBorder(),labelText: "name",hintText: "Name"),)),
//
//                   ],
//                 ),
//               ),
//
//
//
//             ],
//
//
//
//           ),
//         )
//
//     );
//
//
//   }
// }
//
//
