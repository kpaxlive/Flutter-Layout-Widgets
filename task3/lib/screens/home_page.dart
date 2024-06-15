import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_3/my_widgets/card.dart';

class DeviceInfo {
  String name;
  String iconAsset;

  DeviceInfo({
    required this.name,
    required this.iconAsset,
  });
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<DeviceInfo> devices = [
    DeviceInfo(name: "Fridge", iconAsset: "assets/images/fridge.png"),
    DeviceInfo(name: "Air-Conditioner", iconAsset: "assets/images/ac.png"),
    DeviceInfo(name: "Lights", iconAsset: "assets/images/lamp.png"),
    DeviceInfo(name: "Music", iconAsset: "assets/images/spotify.png"),
  ];

  final double pi = 3.14;
  bool onOff = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text('FutureTech',
            style: GoogleFonts.aBeeZee(
                textStyle: const TextStyle(
                    fontSize: 35, fontWeight: FontWeight.bold))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('My Devices',
                style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold))),
            const Divider(
              height: 25,
              thickness: 5,
              color: Colors.black,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.grey.shade200,
                    Colors.grey.shade300,
                    Colors.green.shade100,
                    Colors.green.shade200,
                    Colors.green.shade300,
                    Colors.green.shade400,
                    Colors.green.shade500,
                    Colors.green,
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Your Home\n',
                      style: TextStyle(
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'is in your hands',
                            style: GoogleFonts.aBeeZee(
                                textStyle: TextStyle(
                              color: Color.fromARGB(255, 13, 60, 16),
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            )))
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/images/home.png",
                    height: 300,
                    width: 200,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ), 
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: devices.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                DeviceInfo device = devices[index];
                return MyCard(device: device);
              },
            ),
          ]),
        ),
      ),
    );
  }
}
