import 'package:flutter/material.dart';
import 'fruit-list.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFF), // Dark red color from the image
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 25, top: 25, left: 77, right: 77),
              color: Color(0xFFB71C1C), // Dark red color
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('images/foto_drawer.png'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Naufal Muhammad',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'naufalmuh@gmail.com',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Navigate to home screen
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Fruit List'),
              onTap: () {
                // Menavigasi ke halaman FruitListView
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FruitListView()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                // Navigate to about screen
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Exit'),
              onTap: () {
                // Exit the app
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 0, bottom: 16, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Fruitify!',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'PlusJakartaSans',
                fontWeight: FontWeight.w900,
                color: Color(0xFF386641),
              ),
            ),
            SizedBox(height: 12),
            Image.asset('images/semangka.png', width: 400),
            SizedBox(height: 12),
            Text(
              'Are you wondering what fruit\nto eat today?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'PlusJakartaSans',
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Well here you can see the different\ntypes of fruits and their benefits',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'PlusJakartaSans', // Use the custom font
              ),
            ),
          ],
        ),
      ),
    );
  }
}
