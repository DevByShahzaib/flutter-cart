import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('myApp'),
        centerTitle: true,
      ),
      body: Center(child: Text("Welcome to 30 days of flutter")),
      drawer: MyDrawer(),
    );
  }
}
