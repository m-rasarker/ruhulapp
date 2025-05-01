import 'package:flutter/material.dart';

class Listviewbuilder extends StatelessWidget {
  const Listviewbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View Builder'),backgroundColor: Colors.green,),

      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context,index){
          return Card(
            shadowColor: Colors.red,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete),


              title: Text('I am Ruhul'),
              subtitle: Text("Cell is 017319205 $index"),
            ),


          );




          })



    );
  }
}
