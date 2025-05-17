import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class assignRuhul extends StatelessWidget {
  const assignRuhul({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;

    int spil = screenSize > 1024 ? 4 : screenSize > 768 ? 3: 2;
    double imgheight = screenSize > 1024 ? .55 : screenSize > 768 ? .55 :.50;
    double fsize = screenSize > 768 ?  16 : 10;
    String sreentxt = screenSize > 1024 ? 'Desktop/Web Size (Pixel Size > 1024)' : screenSize > 768 ? 'Tablet size (Pixel Size > 768 and Pixel size <=1024)': 'Mobile Size (Pixel Size <=768)';
    List<String> cname = ['Djibouti','Guinea', 'Egypt','Cameroon','Mauritania','Turky','Benin','Kenya'];
    List<String> cflag = ['assets/images/Djibouti.png','assets/images/Guinea.png', 'assets/images/Egypt.png','assets/images/Cameroon.png','assets/images/Mauritania.png','assets/images/Turkey.png','assets/images/Benin.png','assets/images/Kenya.png'];

    return Scaffold(
      appBar: AppBar(title: Text('Ruhul Amin, Asssignment'),),
      body: Column(
        children: [
          Text('$sreentxt',style: TextStyle(fontSize: 10.sp),),
          SizedBox(height: 10,),
          Expanded(
            child: SizedBox(
              width: screenSize,
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
                        Image.asset(cflag[index],width: screenSize/spil, height: screenSize/spil*imgheight),

                        Text(cname[index], style: TextStyle(fontSize: 8.sp),),
                        ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                            )), child: Row(
                          children: [Expanded(child: Text('For Details',style: TextStyle(color: Colors.black, fontSize: 8.sp),)),

                            // Icon(Icons.arrow_circle_right)
                            //  Icon(Icons.keyboard_arrow_right_sharp)
                            Icon(Icons.keyboard_double_arrow_right)
                          ],
                        ) ),
                      ],

                    ),
                  );

                },

              ),
            ),
          ),
        ],
      ),
    );
  }
}