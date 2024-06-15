
class Destinations {
  final String name;
  final String thumbnail;
  final String population;
  final String landmark;
  final String country;

  Destinations({
    required this.name,
    required this.thumbnail,
    required this.population,
    required this.landmark,
    required this.country,
  });
}

final List destinations = [
    Destinations(
      name: "Paris",
      thumbnail: "assets/cities/paris.jpg",
      population: "11.208 million",
      landmark: "Eiffel Tower",
      country: "France",
    ),
    Destinations(
      name: "Tokyo",
      thumbnail: "assets/cities/tokyo.jpg",
      population: "37,115 million",
      landmark: "Senso-ji Temple",
      country: "Japan",
    ),
    Destinations(
      name: "New York",
      thumbnail: "assets/cities/new_york.jpg",
      population: "19.571 million",
      landmark: "Central Park",
      country: "United States",
    ),
    Destinations(
      name: "Rome",
      thumbnail: "assets/cities/rome.jpg",
      population: '4.316 million',
      landmark: "Colosseum",
      country: "Italy",
    ),
    Destinations(
      name: "London",
      thumbnail: "assets/cities/london.jpg",
      population: '9.65 million',
      landmark: "London Eye",
      country: "United Kingdom",
    ),
    Destinations(
      name: "Sydney",
      thumbnail: "assets/cities/sydney.jpg",
      population: "5,450 million",
      landmark: "Sydney Opera House",
      country: "Australia",
    ),
  ];