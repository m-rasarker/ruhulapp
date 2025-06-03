import 'package:flutter/material.dart';
import 'package:ruhul_app/function/function.dart';
import 'package:ruhul_app/style/style.dart';

class Livetest extends StatefulWidget {
  const Livetest({super.key});

  @override
  State<Livetest> createState() => _LivetestState();
}

class _LivetestState extends State<Livetest> {
  List<String> name = [];
  List<String> phone =[];
  void _addList(){
    if(nameController.text.isNotEmpty){
      setState(() {
        name.add(nameController.text);
        phone.add(phoneController.text);
        nameController.clear();
        phoneController.clear();
      });

    }
  }

  void _deletelist(int index){
    setState(() {
      name.removeAt(index);
      phone.removeAt(index);
    });
  }
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();



  Future<dynamic> ShowDialog(BuildContext context,int index){
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            backgroundColor: Colors.blueGrey,
            title: Text('Confirmation'),
            content: Text('Would you like to delete the contact'),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              },
                  child: Text('No')),
              TextButton(onPressed: (){
                Navigator.pop(context);
                _deletelist(index);
              },
                  child: Text('Yes')),
            ],
          );

        }
    );
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('Contact List'),  backgroundColor: Colors.blueGrey,),
      body: SingleChildScrollView(
        child: Center(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             children: [
           
                  TextField(
                     controller: nameController,
                     decoration: InputDecoration(
                         labelText: 'Name',
                         border: OutlineInputBorder()
                     ),
                   ),
                   SizedBox(height: 20,),
                   TextField(
                     controller: phoneController,
                     decoration: InputDecoration(
                         labelText: 'Phone Number',
                         border: OutlineInputBorder()
                     ),
                   ),
               SizedBox(height: 20,),
                   SizedBox(
                     width: double.infinity,
                       child: ElevatedButton(onPressed:_addList, child: Text('Add'),
                         style: ElevatedButton.styleFrom(
                           padding: EdgeInsets.all(15),
                           backgroundColor: Colors.blueGrey,
                           foregroundColor: Colors.white,
                           shape: const RoundedRectangleBorder(
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                           ),
                         ))),
                SizedBox(height: 20,),
        
               Container(
                 height: 300,
                 child: ListView.builder( itemCount: name.length, itemBuilder: (context,index){
                   return Card(
                       child:  Column(
                         children: [
                           ListTile(
                             trailing: IconButton(
                               onPressed: ()=>
                                  ShowDialog(context, index),

                                //   _deletelist(index),
                                   icon: Icon(Icons.delete,color: Colors.red,),
                                      ),
                             leading: Icon(Icons.person),
                             title:  Text(name[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold ),),
                             subtitle: Text(phone[index]),
        
                           ),
        
        
                         ],
                       )
                   );
                 }),
               ),
        
        
             ],
        
           ),
         ),
        ),
      ),

    );

  }
}
