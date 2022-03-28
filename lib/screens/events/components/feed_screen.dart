import 'package:flutter/material.dart';
import 'package:travel/components/app_bar.dart';
import 'package:travel/components/custom_bottom_nav_bar.dart';
import 'package:travel/screens/events/components/feedbody.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "Feed"),
      body: feedbody(),
      bottomNavigationBar: CustomBottonNavBar(),
    );
  }
}

