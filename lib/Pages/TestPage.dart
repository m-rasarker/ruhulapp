

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      body: Column(

        children: [Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(decoration: InputDecoration(labelText: 'name',hintText: 'Name'),style: textStyle,),
        ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(labelText: 'address',hintText: 'address')),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(labelText: 'phone',hintText: 'phone')),
          ),
        Row(
          children: [SizedBox(
              height: 100,
              width: 200,

              child: Padding(
                padding: EdgeInsets.fromLTRB(8,0,0,0),
                child: TextField(),
              )),
            SizedBox(
              height: 100,
              width: 200,
              child: Padding(
                padding: EdgeInsets.fromLTRB(8,0,0,0),
                child: TextField(),
              )),

          ],
        ),

          Row(
            children: [
              InkWell(onTap: (){MySnackBar('gasture', context);}, child: SizedBox( width: 100,height: 30, child: Text('I am Ruhul',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400, backgroundColor: Colors.orange),))),
              SizedBox(width:100,height:30,child: Text('I am Ruhul')),
              Container(width:100,height:30,child: Text('I am Ruhul'))
            ],
          ),

           ElevatedButton(
            style: buttonStyle,
            onPressed: () {
              // Do something when the button is pressed
              print("Button Pressed!");
            },
            child: Text('Click Me'),
          ),
ElevatedButton(onPressed: (){}, child: const Text('Update'),style: buttonStyle,)

        ],
      ),


    );
  }
}
