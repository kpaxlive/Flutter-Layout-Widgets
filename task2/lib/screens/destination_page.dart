import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_2/components/destinations.dart';

class DestinationPage extends StatelessWidget {
  const DestinationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Destinations destinationOfCity =
        ModalRoute.of(context)!.settings.arguments as Destinations;
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.grey.shade100,
        ),
        backgroundColor: Colors.black54,
        title: Text(
          destinationOfCity.name,
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
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                image: DecorationImage(
                  image: AssetImage(destinationOfCity.thumbnail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "City Name: ${destinationOfCity.name}",
                  style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "City Population: ${destinationOfCity.population}",
                  style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "City Landmark: ${destinationOfCity.landmark}",
                  style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "Country: ${destinationOfCity.country}",
                  style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
