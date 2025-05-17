import 'package:flutter/material.dart';

class assignRuhul extends StatelessWidget {
  const assignRuhul({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    int spil = screenSize > 1024 ? 4 : screenSize > 768 ? 3: 2;
    String sreentxt = screenSize > 1024 ? 'Desktop/Web Size (Pixel Size > 1024)' : screenSize > 768 ? 'Tablet size (Pixel Size > 768 and Pixel size <=1024)': 'Mobile Size (Pixel Size <=768)';
    List<String> cname = ['Djibouti','Guinea', 'Egypt','Cameroon','Mauritania','Turky','Mauritania','Turky'];
    List<String> cflag = ['assets/images/Djibouti.png','assets/images/Guinea.png', 'assets/images/Egypt.png','assets/images/Cameroon.png','assets/images/Mauritania.png','assets/images/Turkey.png','assets/images/Mauritania.png','assets/images/Turkey.png'];

    return Scaffold(
      appBar: AppBar(title: Text('Ruhul Amin, Asssignment'),),
      body: Column(
        children: [
          Text('$sreentxt'),
          Expanded(

            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: spil,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,

              ),
              itemCount: cflag.length,
              itemBuilder: (contex,index){
                return Card(
                  child: Column(
                    children: [
                      Image.asset(cflag[index], width: screenSize/spil, height: screenSize/spil*.60),
                      Text(cname[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),

                      SizedBox(
                        // width: screenSize/spil-20,
                        height: 40,
                        child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                            )), child: const Row(
                          children: [Expanded(child: Text('For Details',style: TextStyle(color: Colors.black),)),

                            // Icon(Icons.arrow_circle_right)
                            //  Icon(Icons.keyboard_arrow_right_sharp)
                            Icon(Icons.keyboard_double_arrow_right)
                          ],
                        ) ),

                      )

                    ],

                  ),
                );

              },

            ),

          ),
        ],
      ),
    );
  }
}
