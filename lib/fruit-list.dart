import 'package:flutter/material.dart';
import 'fruit-detail.dart';

class FruitListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF),
      ),
      body: Column(
        children: [
          // Bagian teks yang tidak akan digulung
          Padding(
            padding: const EdgeInsets.all(16.0),
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
          SizedBox(height: 16), // Memberikan ruang antara teks dan daftar buah

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

