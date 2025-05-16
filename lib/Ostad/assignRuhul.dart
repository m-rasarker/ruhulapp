import 'package:flutter/material.dart';

class assignRuhul extends StatelessWidget {
  const assignRuhul({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    int spil = screenSize > 1024 ? 4 : screenSize > 768 ? 3: 2;
    String sreentxt = screenSize > 1024 ? 'Desktop/Web Size (Pixel Size > 1024)' : screenSize > 768 ? 'Tablet size (Pixel Size > 768)': 'Mobile Size (Pixel Size <=768)';
    List<String> cname = ['Djibouti','Guinea', 'Egypt','Cameroon','Mauritania','Turky'];
    List<String> cflag = ['assets/images/Djibouti.png','assets/images/Guinea.png', 'assets/images/Egypt.png','assets/images/Cameroon.png','assets/images/Mauritania.png','assets/images/Turkey.png'];

    return Scaffold(
          appBar: AppBar(title: Text('Ruhul Amin, Asssignment'),),
      body: Column(
        children: [
          Text('$sreentxt'),
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
                             Image.asset(cflag[index], width: screenSize/spil, height: screenSize/spil*.80),
                              Text(cname[index]),
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
