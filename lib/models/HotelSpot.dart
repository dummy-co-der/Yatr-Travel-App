import 'package:flutter/material.dart';
import 'package:travel/screens/events/components/hotel_screen.dart';

class HotelSpot {
  final String name, image;
  final DateTime date;
  // final List<User> users;

  HotelSpot({
    // @required this.users,
    @required this.name,
    @required this.image,
    @required this.date,
  });
}

List<HotelSpot> hotelSpots = [
  HotelSpot(
// users: users..shuffle(),
    name: "Yog Niketan",
    image: "assets/images/yog.jpg",
    date: DateTime(2020, 10, 15),
  ),

  HotelSpot(
// users: users..shuffle(),
    name: "Aloha Gange",
    image: "assets/images/aloha.jpg",
    date: DateTime(2020, 3, 10),
  ),

  HotelSpot(
// users: users..shuffle(),
    name: "Jaypee Residency",
    image: "assets/images/jaypee.jpg",
    date: DateTime(2020, 3, 10),
  ),

  HotelSpot(
// users: users..shuffle(),
    name: "Sterling",
    image: "assets/images/sterling.jpg",
    date: DateTime(2020, 3, 10),
  ),

  HotelSpot(
// users: users..shuffle(),
    name: "Saraswati",
    image: "assets/images/saraswati.jpg",
    date: DateTime(2020, 3, 10),
  ),

  HotelSpot(
// users: users..shuffle(),
    name: "Shiv Kripa",
    image: "assets/images/shiv.jpg",
    date: DateTime(2020, 3, 10),
  ),
];

