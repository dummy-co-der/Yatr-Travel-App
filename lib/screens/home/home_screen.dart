// import 'package:flutter/material.dart';
// import 'package:travel/components/app_bar.dart';
// import 'package:travel/components/custom_bottom_nav_bar.dart';
// import 'package:travel/screens/home/components/body.dart';
//
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       extendBodyBehindAppBar: true,
//       appBar: buildAppBar(context, isTransparent: true),
//       body: Body(),
//       bottomNavigationBar: CustomBottonNavBar(),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:travel/components/custom_bottom_nav_bar.dart';
import 'package:travel/screens/home/components/body.dart';

import '../../components/app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context, isTransparent: true),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottonNavBar(),
    );
  }
}