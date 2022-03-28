import 'package:flutter/material.dart';
import 'package:travel/components/place_card.dart';
import 'package:travel/components/section_title.dart';
import 'package:travel/models/TravelSpot.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        // SectionTitle(
        //   // title: "Places to Visit",
        //   // press: () {},
        // ),
        ListTile(
          title: Padding(
            padding: const EdgeInsets.only(top:80),
            child: Text('Suggestions for You ⛅ '),
          ),
        ),

        VerticalSpacing(of: 20),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(

            children: [
              ...List.generate(
                travelSpots.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(kDefaultPadding),
                      top: getProportionateScreenWidth(30),
                  ),
                  child: PlaceCard(
                    travelSport: travelSpots[index],
                    press: () {},
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(kDefaultPadding),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
