import 'package:flutter/material.dart';
import 'package:travel/screens/events/components/hotel_screen.dart';

class HotelSpot {
  final String name, image;
  final String text;
  // final List<User> users;

  HotelSpot({
    // @required this.users,
    @required this.name,
    @required this.image,
    @required this.text,
  });
}

List<HotelSpot> hotelSpots = [
  HotelSpot(
// users: users..shuffle(),
    name: "Yog Niketan",
    image: "assets/images/yog.jpg",
    text: "₹9,561 /per night Property amenities Free parking Internet Spa, etc.",
    // date: DateTime(2020, 10, 15),
  ),

  HotelSpot(
// users: users..shuffle(),
    name: "Aloha Gange",
    image: "assets/images/aloha.jpg",
    text: "₹15,222 /per night Property amenities Free breakfast Gaming Room Spa, etc.",
    // date: DateTime(2020, 3, 10),
  ),

  HotelSpot(
// users: users..shuffle(),
    name: "Jaypee Residency",
    image: "assets/images/jaypee.jpg",
    text: "₹16,222 /per night Property amenities Free breakfast Gaming Room Spa, etc.",
    // date: DateTime(2020, 3, 10),
  ),

  HotelSpot(
// users: users..shuffle(),
    name: "Sterling",
    image: "assets/images/sterling.jpg",
    text: "₹8,222 /per nightProperty amenities Free breakfast Yoga ClassesSpa, etc.",
    // date: DateTime(2020, 3, 10),
  ),

  HotelSpot(
// users: users..shuffle(),
    name: "Saraswati",
    image: "assets/images/saraswati.jpg",
    text: "₹8,222 /per nightProperty amenities Free breakfast Yoga ClassesSpa, etc.",
    // date: DateTime(2020, 3, 10),
  ),

  HotelSpot(
// users: users..shuffle(),
    name: "Shiv Kripa",
    image: "assets/images/shiv.jpg",
    text: "₹8,222 /per nightProperty amenities Free breakfast Yoga ClassesSpa, etc.",
    // date: DateTime(2020, 3, 10),
  ),
];

