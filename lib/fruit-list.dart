import 'package:flutter/material.dart';

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
          SizedBox(height: 16),  // Memberikan ruang antara teks dan daftar buah

          // Bagian scrollable untuk daftar buah
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  FruitCard(
                    fruitImage: 'images/melon.png',
                    fruitName: 'Melon',
                  ),
                  FruitCard(
                    fruitImage: 'images/pisang.png',
                    fruitName: 'Banana',
                  ),
                  FruitCard(
                    fruitImage: 'images/pepaya.png',
                    fruitName: 'Papaya',
                  ),
              FruitCard(
                fruitImage: 'images/watermelon.png',
                fruitName: 'Watermelon',)
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
        elevation: 0,  // Remove the shadow to make it flat
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(  // Center the image
              child: Image.asset(fruitImage),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                fruitName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PlusJakartaSans'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
