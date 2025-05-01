import 'package:flutter/material.dart';

class gridviewPractice extends StatelessWidget {
  const gridviewPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gridview Practice'),),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 25,
        mainAxisSpacing: 25,

      ),
          itemCount: 20,

          itemBuilder: (context,index){

        return   Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.orange,
            ),

            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Icon(Icons.phone, color: Colors.white),
            const SizedBox(height: 10,),
            const Text("Send Money",style: TextStyle(color: Colors.white),),
            ],
            ),
            );


      }),


    );
  }
}
