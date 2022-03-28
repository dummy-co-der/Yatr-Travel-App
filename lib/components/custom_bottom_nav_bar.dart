import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/screens/events/events_screen.dart';
import 'package:travel/screens/events/components/hotel_screen.dart';
import 'package:travel/screens/events/components/locale_screen.dart';
import '../constants.dart';
import '../screens/events/components/food_screen.dart';
import '../screens/events/components/feed_screen.dart';
import '../size_config.dart';

class CustomBottonNavBar extends StatelessWidget {
  const CustomBottonNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(2), vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(
                icon: "assets/icons/home.svg",
                title: "Home",
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EventsScreen(),
                      ));
                },
              ),
              NavItem(
                icon: "assets/icons/hotel.svg",
                title: "Hotel",
                isActive: true,
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                  builder: (context) => HotelScreen(),
                      )
                  );
                },
              ),
              NavItem(
                icon: "assets/icons/place.svg",
                title: "Place",
                isActive: true,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LocaleScreen(),
                    )
                  );
                },
              ),
              NavItem(
                icon: "assets/icons/food.svg",
                title: "Food",
                isActive: true,
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoodScreen(),
                      ));
                },
              ),
              NavItem(
                icon: "assets/icons/feeds.svg",
                title: "Feeds",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FeedScreen(),
                    )
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.press,
    this.isActive = false,
  }) : super(key: key);
  final String icon, title;
  final GestureTapCallback press;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(5),
        height: getProportionateScreenWidth(60),
        width: getProportionateScreenWidth(60),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isActive) kDefualtShadow],
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              color: kTextColor,
              height: 20,
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
