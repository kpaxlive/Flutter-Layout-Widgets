import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_3/my_widgets/device_containers.dart';
import 'package:task_3/screens/home_page.dart';

class MyCard extends StatefulWidget {
  final DeviceInfo device;
  MyCard({super.key, required this.device});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool onOff = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.grey.shade800,
            Colors.grey.shade700,
            Colors.grey.shade500,
            Colors.grey.shade300,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InsideContainer(device: widget.device),
                Transform.rotate(
                  angle: 3.14 / 2,
                  child: CupertinoSwitch(
                    value: onOff,
                    activeColor: Colors.green,
                    thumbColor: Colors.grey.shade800,
                    trackColor: Colors.grey.shade100,
                    onChanged: (value) {
                      setState(() {
                        onOff = !onOff;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Text(widget.device.name,
                style: GoogleFonts.aBeeZee(
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade100),
                )),
          ),
        ],
      ),
    );
  }
}
