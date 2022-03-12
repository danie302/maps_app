import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}