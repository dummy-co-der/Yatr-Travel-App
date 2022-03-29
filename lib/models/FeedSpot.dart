import 'package:flutter/material.dart';
import 'package:travel/screens/events/components/feed_screen.dart';

class FeedSpot {
  final String name, image;
  final String text;
  // final List<User> users;

  FeedSpot({
    // @required this.users,
    @required this.name,
    @required this.image,
    @required this.text,
    // @required this.date,
  });
}

List<FeedSpot> feedSpots = [
  FeedSpot(
// users: users..shuffle(),
    name: "John",
    image: "assets/images/John.png",
    text: "Kedarnath is the best Place I visited. It was a great experience. User Review- ⭐⭐⭐⭐⭐",
    // date: DateTime(2020, 10, 15),
  ),

  FeedSpot(
// users: users..shuffle(),
    name: "James",
    image: "assets/images/james.png",
    text: "Badrinath is the best place I visited in my life User Review- ⭐⭐⭐⭐",
    // date: DateTime(2020, 3, 10),
  ),

  FeedSpot(
// users: users..shuffle(),
    name: "Rosy",
    image: "assets/images/rosy.png",
    text: "Doing river rafting in Rishikesh was tremendous User Review- ⭐⭐⭐⭐",
    // date: DateTime(2020, 3, 10),
  ),

  FeedSpot(
// users: users..shuffle(),
    name: "Christine",
    image: "assets/images/marry.png",
    text: "Paragliding was an awesome experience User Review- ⭐⭐⭐⭐⭐",
    // date: DateTime(2020, 3, 10),
  ),
];

