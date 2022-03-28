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
    name: "John",
    image: "assets/images/John.png",
    date: DateTime(2020, 10, 15),
  ),

  FeedSpot(
// users: users..shuffle(),
    name: "James",
    image: "assets/images/james.png",
    date: DateTime(2020, 3, 10),
  ),

  FeedSpot(
// users: users..shuffle(),
    name: "Rosy",
    image: "assets/images/rosy.png",
    date: DateTime(2020, 3, 10),
  ),

  FeedSpot(
// users: users..shuffle(),
    name: "Christine",
    image: "assets/images/marry.png",
    date: DateTime(2020, 3, 10),
  ),
];

