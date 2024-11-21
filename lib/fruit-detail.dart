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
      appBar: AppBar(
        title: Text(fruitName),
        backgroundColor: Color(0xFFB71C1C),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(fruitImage),
            SizedBox(height: 20),
            Text(
              fruitName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              fruitDescription,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
