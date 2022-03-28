import 'package:flutter/material.dart';
import 'package:travel/screens/events/components/locale_screen.dart';

class LocaleSpot {
  final String name, image;
  final DateTime date;
  // final List<User> users;

  LocaleSpot({
    // @required this.users,
    @required this.name,
    @required this.image,
    @required this.date,
  });
}

List<LocaleSpot> localeSpots = [
  LocaleSpot(
// users: users..shuffle(),
    name: "Kedarnath",
    image: "assets/images/kedarnath-yatra.jpg",
    date: DateTime(2020, 10, 15),
  ),

  LocaleSpot(
// users: users..shuffle(),
    name: "Badrinath",
    image: "assets/images/badrinath-yatra.jpg",
    date: DateTime(2020, 3, 10),
  ),

  LocaleSpot(
// users: users..shuffle(),
    name: "Gangotri",
    image: "assets/images/gangotri-yatra.jpg",
    date: DateTime(2020, 3, 10),
  ),

  LocaleSpot(
// users: users..shuffle(),
    name: "Yamunotri",
    image: "assets/images/yamunotri-yatra.jpg",
    date: DateTime(2020, 3, 10),
  ),
];

