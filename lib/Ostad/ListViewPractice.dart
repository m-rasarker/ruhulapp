
import 'package:flutter/material.dart';

class Listviewpractice extends StatelessWidget {
  const Listviewpractice({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('List View'),backgroundColor: Colors.grey,),

     body:     Padding(
       padding: const EdgeInsets.all(8.0),
       child: ListView(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.red,width: 5)
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    width: double.infinity,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.red,width: 5)
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    width: double.infinity,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.red,width: 5)
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    width: double.infinity,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.red,width: 5)
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    width: double.infinity,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.red,width: 5)
                    ),
                  ),

                ],

          ),
     ),

      );

  }
}


