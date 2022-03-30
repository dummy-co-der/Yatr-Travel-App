import 'package:flutter/material.dart';
import 'package:travel/models/User.dart';

class TravelSpot {
  final String name, image;
  final String text;
  // final List<User> users;

  TravelSpot({
    // @required this.users,
    @required this.name,
    @required this.image,
    @required this.text,
  });
}

List<TravelSpot> travelSpots = [
  TravelSpot(
    // users: users..shuffle(),
    name: "Kedarnath",
    image: "assets/images/kedarnath-yatra.jpg",
    text: "Present Temperature- ☀️ 11°C 12 km/h From southwest 💨Best Time to Visit- May to June and September to October",
    // date: DateTime(2020, 10, 15),
  ),
  TravelSpot(
    // users: users..shuffle(),
    name: "Paragliding",
    image: "assets/images/Paragliding.png",
    text: "Present Temperature- ☀️ 6°C Best Time to Visit- March to May and October – November",
    // date: DateTime(2020, 3, 10),
  ),
  TravelSpot(
    // users: users..shuffle(),
    name: "Gangotri",
    image: "assets/images/gangotri-yatra.jpg",
    text: "Present Temperature- 🌧️ 15°C 10 km/h From Northwest 💨 Best Time to Visit- Summer Season",
    // date: DateTime(2020, 10, 15),
  ),
  TravelSpot(
    // users: users..shuffle(),
    name: "Yamunotri",
    image: "assets/images/yamunotri-yatra.jpg",
    text: "Present Temperature- 🌥️ 15°C 8 km/h From southwest 💨 Best Time to Visit- May to June and September to November",
    // date: DateTime(2020, 3, 10),
  ),
];

// List<User> users = [user1, user2, user3];
