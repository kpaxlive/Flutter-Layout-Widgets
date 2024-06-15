import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_2/components/destinations.dart';

class LocationContainer extends StatelessWidget {
  final Destinations currentDestination;
  const LocationContainer({super.key,
  required this.currentDestination,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/destinationPage',
                arguments: currentDestination);
          },
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.deepPurple.shade400,
                image: DecorationImage(
                    image: AssetImage(currentDestination.thumbnail),
                    fit: BoxFit.cover)),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 9),
          child: Text(
            currentDestination.name,
            style: GoogleFonts.aBeeZee(
                textStyle: const TextStyle(
              fontSize: 20,
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
      ],
    );
  }
}
