import 'package:flutter/material.dart';
import 'package:travel/screens/events/components/food_screen.dart';

class FoodSpot {
  final String name, image;
  // final DateTime date;
  final String text;
  // final List<User> users;

  FoodSpot({
    // @required this.users,
    @required this.name,
    @required this.image,
    @required this.text,
  });
}

List<FoodSpot> foodSpots = [
  FoodSpot(
// users: users..shuffle(),
    name: "The Swigs Cafe",
    image: "assets/images/The-Swigs.png",
    text: "4.5⭐ rating 36 reviews Open now: 12:00 PM - 10:30 PM.",
    // date: DateTime(2020, 10, 15),
  ),

  FoodSpot(
// users: users..shuffle(),
    name: "Hoshiyar Puri",
    image: "assets/images/Hoshiyar.png",
    text: "4⭐ rating 30 reviews Open now: 10:00 AM - 10:30 PM.",
    // date: DateTime(2020, 3, 10),
  ),

  FoodSpot(
// users: users..shuffle(),
    name: "Dosa Plaza Punjabitdka",
    image: "assets/images/dosa-plaza.png",
    text: "4⭐ rating 92 reviews Open now: 09:00 AM - 10:30 PM.",
    // date: DateTime(2020, 3, 10),
  ),

  FoodSpot(
// users: users..shuffle(),
    name: "Kalsang",
    image: "assets/images/kalsang.png",
    text: "4⭐ rating 1304 reviews Open now: 09:00 AM - 10:30 PM.",
    // date: DateTime(2020, 3, 10),
  ),

  FoodSpot(
// users: users..shuffle(),
    name: "Barbeque Bay",
    image: "assets/images/barbeque.png",
    text: "4⭐ rating 30 reviews Open now: 09:00 AM - 10:30 PM.",
    // date: DateTime(2020, 3, 10),
  ),
];

