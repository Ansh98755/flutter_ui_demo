import 'package:flutter/material.dart';
import 'package:flutter_ui_demo/pages_new_screen.dart';

import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/newScreen': (context) => NewScreen(),
      },
    );
  }
}
class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
                'assets/dogy.png',
                fit: BoxFit.cover,
            ),
          ),
          SafeArea(
              child: demostrate_page_view(),
          ),
        ],
      ),
    );
  }
}

