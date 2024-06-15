

import 'package:flutter/material.dart';
import 'package:task_4/my_widgets/bottom_buttons.dart';
import 'package:task_4/my_widgets/my_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double sHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text(
          'FinnSmart',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Welcome back Mr. Furkan',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.account_balance_wallet,
                      size: 65,
                    ),
                  ],
                ),
              ),
              const Flexible(
                fit: FlexFit.loose,
                child: SizedBox(
                  height: 420,
                  child: Column(
                    children: [
                      MyCard(account: "Berlin Account", balance: "\$512,756"),
                      MyCard(account: "New York Account", balance: "\$102,430"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: sHeight * 0.012,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BottomButtons(buttonText: "Add\nExpences"),
                  BottomButtons(buttonText: "Transfering\nfunds"),
                  BottomButtons(buttonText: "Operations"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
