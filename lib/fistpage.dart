
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class firstPage extends StatelessWidget {
  const firstPage({super.key});

  Mysnackbar(message,context){
   return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(title: Text('First Page'),
      // titleTextStyle: TextStyle(color: Colors.grey),backgroundColor: Colors.grey,
      // actions: [IconButton(onPressed: (){}, icon: Icon(Icons.message)),
      //   IconButton(onPressed: (){}, icon: Icon(Icons.message))],
      // ),
      //


      appBar: AppBar(title: Text('Fist Page'),backgroundColor: Colors.grey,actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.message)),
        IconButton(onPressed: (){}, icon: Icon(Icons.message)),
        IconButton(onPressed: (){}, icon: Icon(Icons.message))
      ],),

      // appBar: AppBar(
      //   title: const Text('Home Page'),
      //   toolbarHeight: 60,
      //   titleTextStyle: const TextStyle(color: Colors.red),
      //   backgroundColor:Colors.green,
      //   actions: [IconButton(onPressed: (){ MySnackBar('Home action', context);}, icon: const Icon(Icons.home)),
      //     IconButton(onPressed: (){ MySnackBar('Alerm action', context);}, icon: const Icon(Icons.alarm))
      //
      //   ],
      // ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Ruhul Amin')),
            ListTile(leading: const Icon(Icons.home),title: Text('Homme'),onTap: (){},),
            ListTile(leading: const Icon(Icons.person),title: Text('Profile'),onTap: (){},),
            ListTile(leading: const Icon(Icons.settings),title: Text('Setting'),onTap: (){},),

          ],
        ),
      ),

      // drawer: Drawer(
      //   child: ListView(
      //     children: [const DrawerHeader(child: Text('Ruhul Amin')),
      //       ListTile(leading:const Icon(Icons.home), title: const Text('Home'),onTap: (){ MySnackBar('Home Drawer', context);},),
      //       ListTile(leading:const Icon(Icons.settings),title: const Text('Settings'),onTap: (){ MySnackBar('Settings Drawer', context);}),
      //       ListTile(leading:const Icon(Icons.person), title: const Text('Profile'),onTap: (){ MySnackBar('Profile Drawer', context);})],
      //
      //   ),
      //
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings')
        ],
      ),


      // bottomNavigationBar: BottomNavigationBar(
      //   items: [const BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
      //     const BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings')],
      //   onTap: (int index){
      //     if (index==0)
      //     {
      //       MySnackBar('Home $index' , context);
      //     }
      //     else if (index==1)
      //     {
      //       MySnackBar('Setting $index' , context);
      //     }
      //   }
      //   ,
      // ),



    );
  }

}
