

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ruhul_app/Ostad/gridviewpractice.dart';
import 'package:ruhul_app/function/function.dart';
import 'package:ruhul_app/style/style.dart';

class TestPage extends StatelessWidget {


  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        // shape: const RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(left: Radius.circular(25),right: Radius.circular((25)))),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20),bottom: Radius.circular((5)))),
          title: const Text('Home',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.white


      ),
      body: SingleChildScrollView(
        child: Column(
        
          children: [const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(labelText: 'name',hintText: 'Name')),
          ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(labelText: 'address',hintText: 'address')),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(labelText: 'phone',hintText: 'phone')),
            ),

        
            Row(
              children: [
                InkWell(onTap: (){MySnackBar('gasture', context);}, child: SizedBox( width: 100,height: 30, child: Text('I am Ruhul',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400, backgroundColor: Colors.orange),))),
                SizedBox(width:100,height:30,child: Text('I am Ruhul')),
                Container(width:100,height:30,child: Text('I am Ruhul'))
              ],
            ),
        
             ElevatedButton(

              onPressed: () {
                // Do something when the button is pressed
                print("Button Pressed!");
              },
              child: Text('Click Me'),
            ),
            SizedBox(height: 10,),

            ElevatedButton(onPressed: (){}, child: const Text('Update')),

            SizedBox(height: 10,),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> gridviewPractice()));

            }, child: Text('ListView')),

            ElevatedButton(onPressed: (){
              Navigator.pop(context);

            }, child: Text('Back'))


          ],
        ),
      ),


    );
  }
}
