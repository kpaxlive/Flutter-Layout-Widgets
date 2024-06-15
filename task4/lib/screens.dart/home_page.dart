import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_4/informations/informations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _myPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "Comedy Club",
              style: GoogleFonts.euphoriaScript(
                textStyle:
                    const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              CarouselSlider(
                items: images,
                options: CarouselOptions(
                  autoPlay: true,
                  height: 200,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _myPageIndex = index;
                      },
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 350,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text('${informations[_myPageIndex].name}',
                          style: GoogleFonts.euphoriaScript(
                            textStyle: const TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 27,
                      ),
                      Text('${informations[_myPageIndex].information}',
                          style: GoogleFonts.abhayaLibre(
                            textStyle: const TextStyle(
                                fontSize: 21, fontWeight: FontWeight.w300),
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/ticketPage',
                      arguments: _myPageIndex);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 65,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Center(
                    child: Text(
                      "Bilet Al",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
