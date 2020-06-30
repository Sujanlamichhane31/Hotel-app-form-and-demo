import 'package:flutter/material.dart';
import 'package:loginform/pages/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName='/home-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Home Page'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('We are in the homepage'),
          ]
        ),
      ),
    );
  }
}
