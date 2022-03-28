import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'search_fields.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getProportionateScreenWidth(25)),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/home_bg.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: getProportionateScreenHeight(325),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getProportionateScreenHeight(70)),
              Text(
                "  Uttarakhand - Land of God",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 0.4),
              ),
              Text(
                "    Travel Community App",
                style: TextStyle(color: Colors.white),
              ),
              Image.asset(
                "assets/images/weather.png",
                height: getProportionateScreenHeight(105),
                width:getProportionateScreenHeight(400),
              ),
            ],
          ),

          Positioned(
            bottom: getProportionateScreenWidth(-100),
            child: SearchField(),
          )
        ],
      ),

    );
  }
}
