import 'package:flutter/material.dart';
import 'package:ruhul_app/Ostad/UIContents/stack.dart';


import '../widget/add_water_btn.dart';

class WaterTracker extends StatefulWidget {
  const WaterTracker({super.key});

  @override
  State<WaterTracker> createState() => _WaterTrackerState();
}

class _WaterTrackerState extends State<WaterTracker> {
  int currentInTake = 0;
  final int goal = 2000;

  void waterAdd(int amount){
    setState(() {
      currentInTake = (currentInTake+amount).clamp(0, goal);
    });
  }

  void resetWater(){
    setState(() {
      currentInTake=0;
    });
  }




  @override
  Widget build(BuildContext context) {
    double progress = (currentInTake/goal).clamp(0.0, 1.0);
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(
          'Water Tracker',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 150,
                      width:150 ,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(0.0),topRight: Radius.circular(0.0),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.blue.withOpacity(0.5),
                                blurRadius: 10,
                                spreadRadius: 2)
                          ]),

                    ),
                      Container(
                        height: currentInTake/goal*150,
                          width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0.0),topRight: Radius.circular(0.0),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                          color: Colors.grey
                        ),
                      ),
                    Container(


                      child: Column(

                          children: [

                            Text(
                              "Today's InTank",
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                            ),

                            SizedBox(
                              height: 50,
                            ),

                            Text(
                              '$currentInTake LTR',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent),
                            )
                          ]
                      ),

                    )



                  ]


              ),



              SizedBox(
                height: 30,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: CircularProgressIndicator(
                      value: progress,

                      /// 0-1 | 0.1 = 10% 0.5 = 50%
                      backgroundColor: Colors.grey,
                      color: Colors.blueAccent,
                      strokeWidth: 10,
                    ),
                  ),
                  Text(
                    '${(progress*100).toInt()}%',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                spacing: 10,
                children: [
                  addWaterBtn(
                    amount: 200,
                    icon: Icons.local_drink,
                    onClick: ()=>waterAdd(200),
                  ),
                  addWaterBtn(
                    amount: 500,
                    icon: Icons.local_drink,
                    onClick: ()=>waterAdd(500),
                  ),

                  addWaterBtn(
                    amount: 1000,
                    icon: Icons.local_drink,
                    onClick: ()=>waterAdd(1000),
                  ),
                ],
              ),

              SizedBox(height: 20,),

              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red
                      ),
                      onPressed: ()=>resetWater(), child: Text('Reset',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}