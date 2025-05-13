
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Responsive extends StatelessWidget {
  const Responsive({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mobile Responsive'),),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox( height: 10,),
              Text('Expanded wizard use'),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(onPressed: (){}, child: Text('Save'))),
                  Expanded(child: ElevatedButton(onPressed: (){}, child: Text('Update'))),
                  Expanded(child: ElevatedButton(onPressed: (){}, child: Text('Delete'))),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                   Expanded(
                     flex: 3,
                     child: Container(
                       height: 50,
        
                       decoration: BoxDecoration(
                         color: Colors.blue,
                         border: Border.all(color: Colors.black,width: 5)
                       ),
                     ),
                   ),
                  SizedBox(width: 5,),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.black,width: 5)
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.black,width: 5)
                      ),
                    ),
                  )
        
                ],
              ),
              SizedBox( height: 5,),
              Text('Flexible wizard use'),
        
        
        
              Row(
                children: [
                  Flexible(
                    flex: 3,
                   // fit: FlexFit.tight,
                    child: Container(
                      height: 50,
        
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.black,width: 5)
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Flexible(
                    flex: 2,
                    //  fit: FlexFit.tight,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.black,width: 5)
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Flexible(
                    flex: 1,
                   // fit: FlexFit.loose,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.black,width: 5)
                      ),
                    ),
                  )
        
                ],
              ),
              SizedBox(height: 10,),

              Container(
                width: 200.w,
                height: 50.h,
                decoration: BoxDecoration (
                color: Colors.red,
                  border: Border.all(color: Colors.red,width: 10),
                ),
              ),
               Text('This is Reponsive font size',style: TextStyle(fontSize: 20.sp),),
              SizedBox(height: 10,),

            Text('Apect Raio size'),
              AspectRatio(aspectRatio: 16/9,
                child: Container(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 5,),
              Text('Factionnally SizeBox wizard'),

                 Container(
                   height: 100,
                   width: double.infinity,
                   child: FractionallySizedBox(
                     widthFactor: 0.5,  // fractional ratio is calculated base on parent widzed size
                     heightFactor: 0.5,
                     child: ElevatedButton( onPressed: (){},child: Text('Fractionally Size'),),
                   ),
                 ),



        
        
            ],
        
        
        
        
          ),
        ),
      ),





    );

  }

}
