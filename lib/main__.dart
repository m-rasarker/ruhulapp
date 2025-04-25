import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:ruhul_app/Pages/homeScreen.dart';
import 'style/style.dart';
import 'function/function.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal, width: 2.0),
          ),
          labelStyle: TextStyle(color: Colors.teal),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomepage(),
      // home: const HomeScreen(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  MyHomepage({super.key});


  @override
  Widget build(BuildContext context) {
    final mediaWidth =MediaQuery.of(context).size.width/2.0;
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          toolbarHeight: 60,
          titleTextStyle: TextStyle(color: Colors.red),
          backgroundColor:Colors.green,
          actions: [IconButton(onPressed: (){ MySnackBar('Home action', context);}, icon: Icon(Icons.home)),
            IconButton(onPressed: (){ MySnackBar('Alerm action', context);}, icon: Icon(Icons.alarm))

          ],
        ),

        drawer: Drawer(
          child: ListView(
            children: [const DrawerHeader(child: Text('Ruhul Amin')),
              ListTile(leading:const Icon(Icons.home), title: Text('Home'),onTap: (){ MySnackBar('Home Drawer', context);},),
              ListTile(leading:const Icon(Icons.settings),title: Text('Settings'),onTap: (){ MySnackBar('Settings Drawer', context);}),
              ListTile(leading:const Icon(Icons.person), title: Text('Profile'),onTap: (){ MySnackBar('Profile Drawer', context);})],

          ),

        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings')],
          onTap: (int index){
            if (index==0)
            {
              MySnackBar('Home $index' , context);
            }
            else if (index==1)
            {
              MySnackBar('Setting $index' , context);
            }
          }
          ,
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 5,
          backgroundColor: Colors.green,
          child:Icon(Icons.add),
          onPressed: (){MySnackBar('I am Floating Action Button', context);},


        ),
        body: Column(
          // children: [
          //   Padding(padding: EdgeInsets.all(10),
          //   child:  TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'First Name' )),
          //   ),

          children: [Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Name")),
          ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Name")),
            ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                  width:mediaWidth-20,
                  child:const TextField(
                  decoration: InputDecoration(
                  labelText: 'To',
                border: OutlineInputBorder(),
              ))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 50,
                  width:mediaWidth-20,
                  child:const TextField(
                      decoration: InputDecoration(
                        labelText: 'To',
                        border: OutlineInputBorder(),
                      ))),
            )
          ],
        ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50,
                      width:mediaWidth-20,
                      child:const TextField(
                          decoration: InputDecoration(
                            labelText: 'To',
                            border: OutlineInputBorder(),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50,
                      width:mediaWidth-20,
                      child:const TextField(
                          decoration: InputDecoration(
                            labelText: 'To',
                            border: OutlineInputBorder(),
                          ))),
                )
              ],
            ),



          ],

        )

    );


  }
}


