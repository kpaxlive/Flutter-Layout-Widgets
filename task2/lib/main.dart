import 'package:flutter/material.dart';
import 'package:task_2/screens/destination_page.dart';
import 'package:task_2/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/homePage':(context) =>  HomePage(),
        '/destinationPage': (context) => const DestinationPage(),
      },
      initialRoute: '/homePage',
    );
  }
}