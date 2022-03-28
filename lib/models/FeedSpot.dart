import 'package:flutter/material.dart';
import 'package:travel/screens/events/components/feed_screen.dart';

class FeedSpot {
  final String name, image;
  final DateTime date;
  // final List<User> users;

  FeedSpot({
    // @required this.users,
    @required this.name,
    @required this.image,
    @required this.date,
  });
}

List<FeedSpot> feedSpots = [
  FeedSpot(
// users: users..shuffle(),
    name: "The Swigs Cafe",
    image: "assets/images/The-Swigs.png",
    date: DateTime(2020, 10, 15),
  ),

  FeedSpot(
// users: users..shuffle(),
    name: "Hoshiyar Puri",
    image: "assets/images/Hoshiyar.png",
    date: DateTime(2020, 3, 10),
  ),

  FeedSpot(
// users: users..shuffle(),
    name: "Dosa Plaza Punjabitdka",
    image: "assets/images/dosa-plaza.png",
    date: DateTime(2020, 3, 10),
  ),

  FeedSpot(
// users: users..shuffle(),
    name: "Kalsang",
    image: "assets/images/kalsang.png",
    date: DateTime(2020, 3, 10),
  ),

  FeedSpot(
// users: users..shuffle(),
    name: "Barbeque Bay",
    image: "assets/images/barbeque.png",
    date: DateTime(2020, 3, 10),
  ),
];

