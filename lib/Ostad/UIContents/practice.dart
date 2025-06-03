import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhul_app/Ostad/UIContents/listview.dart';
class practice extends StatelessWidget {
  const practice({super.key});

  @override
  Widget build(BuildContext context) {
    double screewidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text('Practice'),),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
            //   Container(
            //     width: screewidth,
            //     height: 80,
            //     decoration: BoxDecoration(
            //
            //       border: Border.all(width: 5, color: Colors.black),
            //       borderRadius: BorderRadius.all(Radius.circular(10)),
            //
            //         boxShadow: [BoxShadow(
            //             color: Colors.blue,
            //             offset: Offset(20,20),
            //             blurRadius: 5 ),
            //           BoxShadow(
            //               color: Colors.red,
            //               offset: Offset(5,5),
            //               blurRadius: 5 ),
            //         ]
            //
            //     ),
            //     child:        Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: TextFormField(
            //         keyboardType: TextInputType.emailAddress,
            //         decoration: InputDecoration(
            //           border: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(10),
            //           ),
            //           label: Text('Name'),
            //           hintText: 'Name of emp',
            //           fillColor: Colors.blue,
            //
            //
            //         ),
            //       ),
            //     ),
            //
            //   ),
            //
            // SizedBox(height: 20,),
            //
            //   Container(
            //     width: screewidth,
            //     height: 50,
            //     decoration: BoxDecoration(
            //       color: Colors.green,
            //       border: Border.all(width: 5, color: Colors.black),
            //       borderRadius: BorderRadius.all(Radius.circular(10)),
            //     ),
            //   ),
            //   Container(
            //     width: screewidth,
            //     height: 50,
            //     decoration: BoxDecoration(
            //       color: Colors.yellow,
            //       border: Border.all(width: 5, color: Colors.black),
            //       borderRadius: BorderRadius.all(Radius.circular(10)),
            //     ),
            //   ),
            //   SizedBox(height: 10,),
            //   TextFormField(
            //     keyboardType: TextInputType.emailAddress,
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder(),
            //       label: Text('Name'),
            //       hintText: 'bane',
            //       fillColor: Colors.blue,
            //
            //
            //     ),
            //   ),
            //   SizedBox(height: 10,),
            //
            //   TextFormField(
            //     keyboardType: TextInputType.emailAddress,
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //
            //       label: Text('Name'),
            //       hintText: 'bane',
            //       fillColor: Colors.blue,
            //
            //
            //     ),
            //   ),
              Container(
                height: 800,
                width: screewidth,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(width: 10, color: Colors.green)
                ),
                child: Column(
                  children: [TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                    ),
                  ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          )
                      ),
                    ),
                SizedBox(height: 50,),
                    // Container(
                    //   height: 500,
                    //   child: ListView.builder(itemCount: 5, itemBuilder: (context,index)
                    //   {
                    //     return Card(
                    //       child: ListTile(
                    //         leading: Icon(Icons.add),
                    //         trailing:  Icon(Icons.person),
                    //         title: Text('0173192054' '$index'),
                    //       ),
                    //
                    //     );
                    //   }),
                    //
                    // ),

                    Container(
                       height: 300,
                      child: ListView.builder( itemCount: 3, itemBuilder: (context,index){
                       return Card(
                         child:  Column(
                           children: [
                             ListTile(
                                 trailing: Icon(Icons.delete),
                                 leading: Icon(Icons.phone),
                                 subtitle: Text('$index'),

                               ),

                             ListTile(
                               trailing: Icon(Icons.delete),
                               leading: Icon(Icons.phone),
                               subtitle: Text('$index'),

                             ),
                             ListTile(
                               trailing: Icon(Icons.delete),
                               leading: Icon(Icons.phone),
                               subtitle: Text('$index'),

                             ),
                             ListTile(
                               trailing: Icon(Icons.delete),
                               leading: Icon(Icons.phone),
                               subtitle: Text('$index'),

                             ),
                           ],
                         )
                       );
                      }),
                    ),

                    Text('Wrap and List with Chip wizard use'),
                    // Wrap(
                    //   spacing: 0.5,
                    //   runSpacing: 0,
                    //   children: List.generate(5, (index) {
                    //     return Chip(label: Text('Chip $index',style: TextStyle(color: Colors.red,fontSize: 10.sp),),
                    //
                    //     );
                    //   }),
                    //
                    // ),


                    Wrap(
                      runSpacing: 0,
                      spacing: 0,
                      children: List.generate(5, (index){
                        return Chip(label: Text('$index'));
                        
                      })
                      
                    ),





                    // Wrap(
                    //   runSpacing: 10,
                    //   spacing: 2,
                    //   children: List.generate(5, (index){
                    //     return Chip(label: Text('$index'));
                    //
                    //   })
                    //
                    // ),
                    //



                    Container(
                      height: 50,
                      width: double.infinity,
                      child: FractionallySizedBox(
                        widthFactor: .9,  // fractional ratio is calculated base on parent widzed size
                        heightFactor: 0.5,
                        child: ElevatedButton( onPressed: (){},child: Text('Fractionally Size'),),
                      ),
                    ),


                  ],
                ),
              ),


           Container(
             height: 200,
             child: ListView.builder(itemCount: 5, itemBuilder: (context,index){
               return Card(
                 child: ListTile(
                   leading: Icon(Icons.person),
                   trailing: Icon(Icons.delete),
                   title: Text('$index'),
                   subtitle: Text('$index'),

                 ),

               );


             }),

           ),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (builder)=> practice()));
               

              }, child: Row(children: [Expanded(child: Text('Next Page')),Icon(Icons.arrow_forward) ],))

          
            ],
          ),
        ),
      ),



    );
  }
}
