import 'package:flutter/material.dart';

class ClubInfo {
  final String? name;
  final String? information;
  final Widget? image;

  ClubInfo({
    required this.name,
    required this.information,
    required this.image,
  });
}

final List<Widget> images = [
    Image.asset('assets/images/0.jpeg'),
    Image.asset('assets/images/1.jpeg'),
    Image.asset('assets/images/2.jpeg'),
    Image.asset('assets/images/3.jpeg'),
  ];

  final List<ClubInfo> informations = [
    ClubInfo(
      name: "Konuşanlar",
      information:
          "Konuşanlar, Türkiye'de yapılan bir komedi programıdır. Hasan Can Kaya tarafından gerçekleştirilen bu komedi gösterisi Exxen internet platformu tarafından dağıtılmaktadır.\n",
      image: Image.asset('assets/images/0.jpeg'),
    ),
    ClubInfo(
      name: "Komedi Dükkanı",
      information:
          "Komedi Dükkanı, komedi türündeki Türk televizyon programıdır. Tolga Çevik'in başrolünü üstlendiği bu program hala reyting olarak üst sıralarda yer alıyor.\n",
      image: Image.asset('assets/images/1.jpeg'),
    ),
    ClubInfo(
      name: "Güldür Güldür",
      information:
          "Güldür Güldür Show, BKM imzalı, Ali Sunal'ın sunduğu eğlence türündeki bir Türk televizyon programıdır. Ara ara konukların yer aldığı programda çeşitli skeçler yer almaktadır.",
      image: Image.asset('assets/images/2.jpeg'),
    ),
    ClubInfo(
      name: "Çok Güzel Hareketler 2",
      information:
          "Çok Güzel Hareketler 2, BKM Mutfak imzalı, 2019 yılında Kanal D'de yayımlanmaya başlayan eğlence türündeki Türk televizyon programıdır.\n",
      image: Image.asset('assets/images/3.jpeg'),
    ),
  ];