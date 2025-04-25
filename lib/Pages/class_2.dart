

import 'package:flutter/material.dart';

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


    );
  }
}
