import 'package:flutter/material.dart';

class FruitDetailPage extends StatelessWidget {
  final String fruitName;
  final String fruitImage;
  final String fruitDescription;

  const FruitDetailPage({
    required this.fruitName,
    required this.fruitImage,
    required this.fruitDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            fruitImage,
            width: double.infinity, // Mengisi seluruh lebar layar
            fit: BoxFit.cover,      // Menyesuaikan gambar
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fruitName,
                  style: TextStyle(
                      fontFamily: 'PlusJakartaSans',
                      fontSize: 26,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 8.0),
                Text(
                  fruitDescription,
                  style: TextStyle(
                    fontFamily: 'PlusJakartaSans',
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
