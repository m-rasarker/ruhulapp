import 'package:flutter/material.dart';
class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete),
              title: Text("Taufiq"),
              subtitle: Text("017929562 $index"),
            ),
          );
        },

      ),
    );
  }
}
