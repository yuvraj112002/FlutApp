import 'package:flutter/material.dart';

void main() {
  runApp(const BackgroundHelloApp());
}

class BackgroundHelloApp extends StatelessWidget {
  const BackgroundHelloApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/images/ytbg.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            const Center(
              child: Text(
                'Hello World!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
