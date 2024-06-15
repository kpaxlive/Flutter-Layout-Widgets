import 'package:flutter/material.dart';
import 'package:task_4/informations/informations.dart';
import 'package:ticket_widget/ticket_widget.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text('${informations[args].name}'),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: TicketWidget(
          width: 350,
          height: 300,
          isCornerRounded: true,
          padding: EdgeInsets.all(20),
          child: TicketData(pageIndex: args),
        ),
      ),
    );
  }
}

class TicketData extends StatelessWidget {
  final int pageIndex;
  const TicketData({
    super.key,
    required this.pageIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 170.0,
              height: 25.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(width: 1.0, color: Colors.green),
              ),
              child: Center(
                child: Text(
                  informations[pageIndex].name!,
                  style: const TextStyle(color: Colors.green),
                ),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text(
            'Bilet Bilgileri',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ticketDetailsWidget(
                  'Adı-Soyadı', 'Furkan Ayan', 'Tarih', '28-05-2024'),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 52.0),
                child:
                    ticketDetailsWidget('Bölüm numarası', '117', 'Kapı', '4B'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 53.0),
                child:
                    ticketDetailsWidget('Class', 'Premium', 'Koltuk', '21B'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget ticketDetailsWidget(String firstTitle, String firstDesc,
    String secondTitle, String secondDesc) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              firstTitle,
              style: const TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                firstDesc,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              secondTitle,
              style: const TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                secondDesc,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      )
    ],
  );
}
