import 'package:flutter/material.dart';
import 'package:travel/screens/events/components/locale_screen.dart';

class LocaleSpot {
  final String name, image;
  final String text;
  // final List<User> users;

  LocaleSpot({
    // @required this.users,
    @required this.name,
    @required this.image,
    @required this.text,
  });
}

List<LocaleSpot> localeSpots = [
  LocaleSpot(
// users: users..shuffle(),
    name: "Kedarnath",
    image: "assets/images/kedarnath-yatra.jpg",
    text: "Present Temperature- ☀️ 11°C 12 km/h From southwest 💨 Best Time to Visit- May to June and September to October",
    // date: DateTime(2020, 10, 15),
  ),

  LocaleSpot(
// users: users..shuffle(),
    name: "Badrinath",
    image: "assets/images/badrinath-yatra.jpg",
    text: "Present Temperature- ☀️ 6°C 5 km/h From southwest 💨 Best Time to Visit- March to May and October – November",
    // date: DateTime(2020, 3, 10),
  ),

  LocaleSpot(
// users: users..shuffle(),
    name: "Gangotri",
    image: "assets/images/gangotri-yatra.jpg",
    // date: DateTime(2020, 3, 10),
    text: "Present Temperature- 🌧️ 15°C 10 km/h From Northwest 💨 Best Time to Visit- Summer Season",
  ),

  LocaleSpot(
// users: users..shuffle(),
    name: "Yamunotri",
    image: "assets/images/yamunotri-yatra.jpg",
    // date: DateTime(2020, 3, 10),
    text: "Present Temperature- 🌥️ 15°C 8 km/h From southwest 💨 Best Time to Visit- May to June and September to November",
  ),
];

