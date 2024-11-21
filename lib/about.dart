import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/main.dart';
import 'fruit-list.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFF), // Warna hijau muda
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
                  MaterialPageRoute(builder: (context) => const HomePage()), // Navigate to HomePage
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('Fruit List'),
              onTap: () {
                // Menavigasi ke halaman FruitListView
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FruitListView()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                // Menavigasi ke halaman AboutPage
                Navigator.pop(context); // Kembali ke halaman About jika sudah di halaman ini
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Exit'),
              onTap: () {
                // Keluar dari aplikasi
                SystemNavigator.pop();  // Menutup aplikasi
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'images/Fruitify.png', // Pastikan path gambar benar
              width: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'Fruitify is your daily companion for discovering fresh, nutritious fruits! Whether you\'re seeking inspiration for healthy choices or simply curious about seasonal options.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Fruitify provides a curated list of fruits every day. Explore their benefits, nutritional insights, and make wellness a part of your routine with ease.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
