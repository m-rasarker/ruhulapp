import 'package:flutter/material.dart';
class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer Use'),),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 42,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrN3fMD9X1_p5b6lRSCGcpDtH9BcgEOsEZLg&s'),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Taufiqur Sabbir ',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'bobo@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    )
                  ],
                )),
            ListTile(
              title: Text('Home'),
              onTap: () {},
            ),
            Divider(
              thickness: 1,
              color: Colors.blue,
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {},
            ),
            Divider(
              thickness: 1,
              color: Colors.blue.shade200,
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
