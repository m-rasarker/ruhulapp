import 'package:flutter/material.dart';

import '../../function/function.dart';

class textControl extends StatelessWidget {
  const textControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Containger'),shape: Border.symmetric(),),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(

          children: [
            Container(

              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 10,color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person,size: 50,color: Colors.blue,),
                    label: Text('Name'),
                    hintText: 'user Name',
                    border: OutlineInputBorder(),

                  ),
                  style: TextStyle(color: Colors.black,fontSize: 30, fontWeight: FontWeight.w500,backgroundColor: Colors.white),),
              ),
            ),

            Container(

              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 10,color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person,size: 50,color: Colors.blue,),
                    label: Text('Name'),
                    hintText: 'user Name',
                    border: OutlineInputBorder(),

                  ),
                  style: TextStyle(color: Colors.black,fontSize: 30, fontWeight: FontWeight.w500,backgroundColor: Colors.white),),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(2),
              height: 90,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 10,color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  // boxShadow: [BoxShadow(
                  //   color: Colors.orange,
                  //   offset: Offset(5,5),
                  //   blurRadius: 5),
                  //   BoxShadow(
                  //       color: Colors.black,
                  //       offset: Offset(5,5),
                  //       blurRadius: 5),
                  //   BoxShadow(
                  //       color: Colors.grey,
                  //       offset: Offset(5,5),
                  //       blurRadius: 5),
                  //
                  // ]

                  boxShadow: [BoxShadow(
                      color: Colors.orange,
                      offset: Offset(5,5),
                      blurRadius: 5)
                  ]

              ),


              child: ElevatedButton(onPressed: () { MySnackBar('I am Elevated button', context); }, child: Text('Save'),
                style:  ButtonStyle(

                ), ),



            ),

            SizedBox(height: 20,),


            Text(
                softWrap: true,
                maxLines: 3,
                // overflow: TextOverflow.ellipsis,
                overflow: TextOverflow.fade,
                'My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, My Name is Ruhul Amin Sarker, '
            ),




          ],


        ),
      ),


    );
  }
}
