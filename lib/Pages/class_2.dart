

import 'package:flutter/material.dart';
import 'package:ruhul_app/Pages/TestPage.dart';

import '../Ostad/gridviewpractice.dart';

class class_2 extends StatelessWidget {
  const class_2({super.key});

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

      body: Center(
        child: Column(
          children: [


            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> TestPage()));

            }, child: Text('ListView')),

            ElevatedButton(onPressed: (){
              Navigator.pop(context);

            }, child: Text('Back')),
            
            
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.red,width: 10)
                
                
              ),
            ),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.red,width: 10)


                  ),
                ),
                Container(
                  height: 200,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.red,width: 10)


                  ),
                  child: TextFormField(

                    decoration: InputDecoration(
                      icon: Icon(Icons.phone),
                      label: Text('Name'),
                      hintText: 'Name',

                    ),

                  ),
                ),

              ],

            )



          ],

        ),
      ),


    );
  }
}
