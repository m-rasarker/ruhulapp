import 'package:flutter/material.dart';
class Mediaquery extends StatelessWidget {
  const Mediaquery({super.key});


  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenSize.width > 600 ? 32 : 18;
    double pexelRatio = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: screenSize.width*0.5,
              height: screenSize.height*0.2,
              color: Colors.red,
            ),
          ),

          Text('This is Media Query text',
            style: TextStyle(
                fontSize: fontSize
            ),
          ),
          Text('pixel Ratio : $pexelRatio'),
          Text('Wrap and List container wizard use'),
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: List.generate(10, (index) {
              return Container(
                color: Colors.red,
                height: 50,
                width: 50,
              );
            }),

          ),
          SizedBox(height: 5,),
          Text('Wrap and List with Chip wizard use'),
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: List.generate(10, (index) {

              return Chip(label: Text('Chip $index',style: TextStyle(color: Colors.red),),

              );
            }),

          ),



          //
          // LayoutBuilder(builder: (context,constraints){
          //   if(constraints.maxWidth > 600){
          //     return GridView.count(crossAxisCount: 5);
          //   }else{
          //     return GridView.count(crossAxisCount: 1);
          //   }
          // })
        ],
      ),

    );
  }
}