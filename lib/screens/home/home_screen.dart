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
                  image: DecorationImage(
                      image: AssetImage("assets/images/drawer.png"),
                      fit: BoxFit.cover)
              ),
              child: Text(
                'Welcome to Uttarakhand',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text('Upcoming Events'),
            ),
            ListTile(
              leading: Icon(Icons.light_mode),
              title: Text('Switch to Dark Mode'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.miscellaneous_services_sharp),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottonNavBar(),
    );
  }
}