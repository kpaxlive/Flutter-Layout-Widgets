import 'package:flutter/material.dart';
import 'package:task_3/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/homePage':(context) =>  HomePage(),
        //'/settingsPage':(context) => const SettingsPage(),
      },
      initialRoute: '/homePage',
    );
  }
}
