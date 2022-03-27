import 'package:flutter/material.dart';
import 'package:travel/models/User.dart';

class TravelSpot {
  final String name, image;
  final DateTime date;
  // final List<User> users;

  TravelSpot({
    // @required this.users,
    @required this.name,
    @required this.image,
    @required this.date,
  });
}

List<TravelSpot> travelSpots = [
  TravelSpot(
    // users: users..shuffle(),
    name: "Kedarnath",
    image: "assets/images/kedarnath-yatra.jpg",
    date: DateTime(2020, 10, 15),
  ),
  TravelSpot(
    // users: users..shuffle(),
    name: "Badrinath",
    image: "assets/images/badrinath-yatra.jpg",
    date: DateTime(2020, 3, 10),
  ),
  TravelSpot(
    // users: users..shuffle(),
    name: "Gangotri",
    image: "assets/images/gangotri-yatra.jpg",
    date: DateTime(2020, 10, 15),
  ),
  TravelSpot(
    // users: users..shuffle(),
    name: "Yamunotri",
    image: "assets/images/yamunotri-yatra.jpg",
    date: DateTime(2020, 3, 10),
  ),
];

// List<User> users = [user1, user2, user3];
