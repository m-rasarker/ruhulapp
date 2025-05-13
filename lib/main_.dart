import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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

        children: [
          Padding(padding: EdgeInsets.all(10),
            child:  TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'First Name' )),
          ),
          Padding(padding: EdgeInsets.all(10),
            child:  TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'First Name' )),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.topCenter,
              width: mediaWidth/2,
              child: TextFormField(
                //  keyboardType: TextInputType.emailAddress,
                // controller: emailController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Closing From",
                    hintText: 'Closing from',
                    border: OutlineInputBorder(),
                    // prefixIcon: Icon(Icons.email,color: Colors.black,),
                  ),
                  validator: (value){
                    if (value!.isEmpty)
                    {
                      return 'Please Enter Closing from';
                    }
                    return null;
                  }
              ),
            ),

            Container(
              width: mediaWidth/2-2,

              padding: EdgeInsets.all(6.0),
              child: const TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Closing From'),),

            ),
            Container(
              width: mediaWidth/2-2,
              padding: EdgeInsets.all(6.0),
              child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Closing From'),),

            ),
            Container(
              width: mediaWidth/2-2,
              padding: EdgeInsets.all(6.0),
              child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Closing From'),),

            ),

            ]
          ),


          Container(
            width: mediaWidth,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(onPressed: (){}, child: const Text('Save'),)



          ),

          Row(
           children: [
             Container(
                 width: mediaWidth,
                 padding: const EdgeInsets.all(10),
                 child: ElevatedButton(onPressed: (){}, child: const Text('Save'),

                 )



             ),


             Container(
               height: 100,
               width: mediaWidth,
               decoration: BoxDecoration(
                 border: Border.all(color:Colors.cyan,width: 10)

               ),
             alignment: Alignment.bottomLeft,padding: EdgeInsets.all(5),

              child: TextField(decoration: InputDecoration(labelText: 'ruhul',hintText: 'name'),),
             )



           ],


          ),



          Container(
            height: 100,
            width: mediaWidth,
            alignment: Alignment.center,
            child: Text('ruhul'),
            decoration:  BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: Colors.black, width: 10),

            ),
          )


        ],


      )

      );


  }
}


