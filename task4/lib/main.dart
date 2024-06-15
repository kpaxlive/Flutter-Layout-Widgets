import 'package:flutter/material.dart';
import 'package:task_4/screens.dart/home_page.dart';
import 'package:task_4/screens.dart/ticket_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FanCarouselImageSlider',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: {
        '/homepage':(context) => const HomePage(),
        '/ticketPage':(context) => const TicketPage(),
      },
      home:  const HomePage(),
    );
  }
}