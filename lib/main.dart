import 'package:flutter/material.dart';
import 'package:loginform/FrontPage.dart';
import 'package:loginform/pages/AboutUs.dart';
import 'package:loginform/pages/Login.dart';
import 'package:loginform/pages/Registration.dart';
import 'package:loginform/pages/homepage.dart';

void main(){
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Application',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
      ),
      home: FrontPage(),
      
      routes:{
        HomeScreen.routeName: (_) => HomeScreen(),
        AboutUs.routeName: (_) =>AboutUs(),
        LoginPage.routeName:(_)=>LoginPage(),
        Registrationform.routeName:(_)=>Registrationform(),
      },
      
    );
  }
}
