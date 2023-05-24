import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/milky-way-1023340_1920.jpg',
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(width * 0.9),
                  child: Image.asset(
                    'assets/images/cover.png',
                    width: width * 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Programming Show',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Follow me on instagram for Flutter tutorials',
                  style: TextStyle(fontSize: 16, color: Colors.white,
                    fontWeight: FontWeight.bold,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
