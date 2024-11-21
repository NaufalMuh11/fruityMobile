import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'fruit-detail.dart';
import 'about.dart';
import 'main.dart';

class FruitListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 25, top: 25, left: 77, right: 77),
              color: const Color(0xFFB71C1C), // Warna merah tua
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('images/foto_drawer.png'),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Naufal Muhammad',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'naufalmuh@gmail.com',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('Fruit List'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => FruitListView()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Exit'),
              onTap: () {
                SystemNavigator.pop(); // Menutup aplikasi
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2, bottom: 2, left: 16, right: 16),
            child: Text(
              'Fruit List',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'PlusJakartaSans',
                fontWeight: FontWeight.w900,
                color: Color(0xFF386641),
              ),
            ),
          ),
          SizedBox(height: 2), // Memberikan ruang antara teks dan daftar buah

          // Bagian scrollable untuk daftar buah
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Navigasi ke halaman detail saat item diklik
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FruitDetailPage(
                            fruitName: 'Melon',
                            fruitImage: 'images/melon-detail.png',
                            fruitDescription:
                            'Melons are hydrating, low-calorie fruits rich in vitamin C, vitamin A, potassium, and antioxidants.',
                          ),
                        ),
                      );
                    },
                    child: FruitCard(
                      fruitImage: 'images/melon.png',
                      fruitName: 'Melon',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FruitDetailPage(
                            fruitName: 'Banana',
                            fruitImage: 'images/pisang-detail.png',
                            fruitDescription:
                            'Bananas are a great source of potassium, vitamin B6, and vitamin C, promoting heart health and digestive health.',
                          ),
                        ),
                      );
                    },
                    child: FruitCard(
                      fruitImage: 'images/pisang.png',
                      fruitName: 'Banana',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FruitDetailPage(
                            fruitName: 'Papaya',
                            fruitImage: 'images/pepaya-detail.png',
                            fruitDescription:
                            'Papayas are rich in vitamin C, vitamin A, and folate, supporting digestion, immunity, and skin health.',
                          ),
                        ),
                      );
                    },
                    child: FruitCard(
                      fruitImage: 'images/pepaya.png',
                      fruitName: 'Papaya',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FruitDetailPage(
                            fruitName: 'Watermelon',
                            fruitImage: 'images/semangka-detail.png',
                            fruitDescription:
                            'Watermelons are refreshing fruits rich in water content, vitamin C, and lycopene, promoting hydration and heart health.',
                          ),
                        ),
                      );
                    },
                    child: FruitCard(
                      fruitImage: 'images/watermelon.png',
                      fruitName: 'Watermelon',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FruitCard extends StatelessWidget {
  final String fruitImage;
  final String fruitName;

  const FruitCard({
    required this.fruitImage,
    required this.fruitName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        color: Colors.transparent,
        elevation: 0, // Remove the shadow to make it flat
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center( // Center the image
              child: Image.asset(fruitImage),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                fruitName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PlusJakartaSans',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
