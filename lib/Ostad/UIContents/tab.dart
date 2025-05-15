import 'package:flutter/material.dart';
import '../widget/cityCard.dart';
class tab extends StatelessWidget {
  const tab({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('This is extra widget'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Fav',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'settings',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            cityCard(image: 'https://www.amny.com/wp-content/uploads/2022/08/GettyImages-523538287.jpg?quality=51', city: 'New York City ',),
            cityCard(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYV3EfsaWMn0aXHxhb5FuXZlJWEbIjUPwSyg&s', city: 'Dhaka',),
            cityCard(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReR9Uns1_rIDNosFY9z7YaB9lGyzOpfd8MXQ&s', city: 'maldives',),
          ],
        ),

      ),
    );
  }
}
