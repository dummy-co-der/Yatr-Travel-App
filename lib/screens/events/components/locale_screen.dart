import 'package:flutter/material.dart';
import 'package:travel/components/app_bar.dart';
import 'package:travel/components/custom_bottom_nav_bar.dart';
import 'package:travel/screens/events/components/localebody.dart';

class LocaleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "Locale"),
      body: localebody(),
      bottomNavigationBar: CustomBottonNavBar(),
    );
  }
}

