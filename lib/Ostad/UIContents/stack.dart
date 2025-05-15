import 'package:flutter/material.dart';
class stack extends StatelessWidget {
  const stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Container'), backgroundColor: Colors.green,),


        body:
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            height: 250,

            padding: EdgeInsets.all(10),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(4, 4),
                  blurRadius: 10,

                ),
              ],
            ),
            alignment: Alignment.center,
            width: 250,
            child: Column(
              children: [
                Stack(children: [
                  Image.network('https://www.amny.com/wp-content/uploads/2022/08/GettyImages-523538287.jpg?quality=51'),
                  Positioned(
                    bottom: 15,
                    left: 10,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '4 .5',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    right: 10,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'city',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ], ),
                Text('city',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                  ),
                ),

              ],
            ),
          ),
        )


    );
  }
}
