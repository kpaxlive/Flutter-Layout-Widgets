import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_2/components/destinations.dart';
import 'package:task_2/components/location_containers.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List ourDestinations = destinations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text(
            "TravelEase",
            style: GoogleFonts.aBeeZee(
              textStyle: TextStyle(
                  color: Colors.grey.shade100,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 110,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    "Our Destinations",
                    style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                      fontSize: 30,
                      color: Colors.transparent,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.black,
                      decorationThickness: 4,
                      shadows: [
                        Shadow(
                          offset: Offset(0, -10),
                          color: Colors.white,
                        )
                      ],
                    )),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 6,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    Destinations destination = ourDestinations[index];
                    return LocationContainer(currentDestination: destination,);
                  }),
            ),
          ],
        ));
  }
}
