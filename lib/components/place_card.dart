import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel/models/TravelSpot.dart';
import 'package:travel/models/User.dart';
import 'package:travel/models/FoodSpot.dart';
import 'package:travel/models/HotelSpot.dart';
import '../constants.dart';
import '../size_config.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key key,
    @required this.travelSport,
    this.isFullCard = false,
    @required this.press,
  }) : super(key: key);

  final TravelSpot travelSport;
  final bool isFullCard;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(isFullCard ? 158 : 137),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: isFullCard ? 1.09 : 1.29,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                    image: AssetImage(travelSport.image), fit: BoxFit.cover),
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(isFullCard ? 158 : 137),
            padding: EdgeInsets.all(
              getProportionateScreenWidth(kDefaultPadding),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [kDefualtShadow],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Text(
                  travelSport.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: isFullCard ? 17 : 12,
                  ),
                ),
                if (isFullCard)
                  Text(
                    travelSport.date.day.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                if (isFullCard)
                  Text(
                    DateFormat.MMMM().format(travelSport.date) +
                        " " +
                        travelSport.date.year.toString(),
                  ),
                VerticalSpacing(of: 10),
                Travelers(
                  // users: travelSport.users,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Travelers extends StatelessWidget {
  const Travelers({
    Key key,
    // @required this.users,
  }) : super(key: key);

  // final List<User> users;

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // ...List.generate(
          //   // users.length,
          //   (index) {
          //     totalUser++;
          //     return Positioned(
          //       left: (22 * index).toDouble(),
          //       child: buildTravelerFace(index),
          //     );
          //   },
          // ),
          Positioned(
            left: (22 * totalUser).toDouble(),
            child: Container(
              height: getProportionateScreenWidth(28),
              width: getProportionateScreenWidth(28),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  ClipOval buildTravelerFace(int index) {
    return ClipOval(
      // child: Image.asset(
      //   // users[index].image,
      //   height: getProportionateScreenWidth(28),
      //   width: getProportionateScreenWidth(28),
      //   fit: BoxFit.cover,
      // ),
    );
  }
}



//FoodSpot
class FoodCard extends StatelessWidget {
  const FoodCard({
    Key key,
    @required this.foodSport,
    this.isFullCard = false,
    @required this.press,
  }) : super(key: key);


final FoodSpot foodSport;
final bool isFullCard;
final GestureTapCallback press;

@override
Widget build(BuildContext context) {
  return SizedBox(
    width: getProportionateScreenWidth(isFullCard ? 158 : 137),
    child: Column(
      children: [
        AspectRatio(
          aspectRatio: isFullCard ? 1.09 : 1.29,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                  image: AssetImage(foodSport.image), fit: BoxFit.cover),
            ),
          ),
        ),
        Container(
          width: getProportionateScreenWidth(isFullCard ? 158 : 137),
          padding: EdgeInsets.all(
            getProportionateScreenWidth(kDefaultPadding),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [kDefualtShadow],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Text(
                foodSport.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: isFullCard ? 17 : 12,
                ),
              ),
              if (isFullCard)
                Text(
                  foodSport.date.day.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              if (isFullCard)
                Text(
                  DateFormat.MMMM().format(foodSport.date) +
                      " " +
                      foodSport.date.year.toString(),
                ),
              VerticalSpacing(of: 10),
              Travelers(
                // users: travelSport.users,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
}

class Fooders extends StatelessWidget {
  const Fooders({
    Key key,
    // @required this.users,
  }) : super(key: key);

  // final List<User> users;

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // ...List.generate(
          //   // users.length,
          //   (index) {
          //     totalUser++;
          //     return Positioned(
          //       left: (22 * index).toDouble(),
          //       child: buildTravelerFace(index),
          //     );
          //   },
          // ),
          Positioned(
            left: (22 * totalUser).toDouble(),
            child: Container(
              height: getProportionateScreenWidth(28),
              width: getProportionateScreenWidth(28),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  ClipOval buildFooderFace(int index) {
    return ClipOval(
      // child: Image.asset(
      //   // users[index].image,
      //   height: getProportionateScreenWidth(28),
      //   width: getProportionateScreenWidth(28),
      //   fit: BoxFit.cover,
      // ),
    );
  }
}


//HotelSpot
class HotelCard extends StatelessWidget {
  const HotelCard({
    Key key,
    @required this.hotelSport,
    this.isFullCard = false,
    @required this.press,
  }) : super(key: key);


  final HotelSpot hotelSport;
  final bool isFullCard;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(isFullCard ? 158 : 137),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: isFullCard ? 1.09 : 1.29,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                    image: AssetImage(hotelSport.image), fit: BoxFit.cover),
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(isFullCard ? 158 : 137),
            padding: EdgeInsets.all(
              getProportionateScreenWidth(kDefaultPadding),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [kDefualtShadow],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Text(
                  hotelSport.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: isFullCard ? 17 : 12,
                  ),
                ),
                if (isFullCard)
                  Text(
                    hotelSport.date.day.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                if (isFullCard)
                  Text(
                    DateFormat.MMMM().format(hotelSport.date) +
                        " " +
                        hotelSport.date.year.toString(),
                  ),
                VerticalSpacing(of: 10),
                Travelers(
                  // users: travelSport.users,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Hotlers extends StatelessWidget {
  const Hotlers({
    Key key,
    // @required this.users,
  }) : super(key: key);

  // final List<User> users;

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // ...List.generate(
          //   // users.length,
          //   (index) {
          //     totalUser++;
          //     return Positioned(
          //       left: (22 * index).toDouble(),
          //       child: buildTravelerFace(index),
          //     );
          //   },
          // ),
          Positioned(
            left: (22 * totalUser).toDouble(),
            child: Container(
              height: getProportionateScreenWidth(28),
              width: getProportionateScreenWidth(28),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  ClipOval buildHotlerFace(int index) {
    return ClipOval(
      // child: Image.asset(
      //   // users[index].image,
      //   height: getProportionateScreenWidth(28),
      //   width: getProportionateScreenWidth(28),
      //   fit: BoxFit.cover,
      // ),
    );
  }
}
