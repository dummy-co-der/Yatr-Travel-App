// import 'package:flutter/material.dart';
// import '../constants.dart';
//
// AppBar buildAppBar(BuildContext context,
//     {bool isTransparent = false, String title}) {
//   return AppBar(
//     iconTheme: ,
//
//
//     backgroundColor: isTransparent ? Colors.transparent : Colors.white,
//     elevation: 0,
//
//     leading: IconButton(
//       icon: Icon(
//         Icons.menu,
//         color: kIconColor,
//       ),
//       onPressed: () {},
//     ),
//     title: ! isTransparent
//         ? Text(
//             isTransparent ? "" : title,
//             style: TextStyle(color: kTextColor),
//           )
//         : null,
//     centerTitle: true,
//     actions: [
//       IconButton(
//         icon: ClipOval(child: Image.asset("assets/images/profile.png")),
//         onPressed: () {},
//       )
//     ],
//   );
// }


import 'package:flutter/material.dart';

import '../constants.dart';

AppBar buildAppBar(BuildContext context,
    {bool isTransparent = false, String title}) {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.purple),
    backgroundColor: isTransparent ? Colors.transparent : Colors.white,
    elevation: 0,
    /*leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: kIconColor,
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => side()));
      },
    ),*/
    title: !isTransparent
        ? Text(
      isTransparent ? "" : title,
      style: TextStyle(color: kTextColor),
    )
        : null,
    centerTitle: true,
    actions: [
      IconButton(
        icon: ClipOval(child: Image.asset("assets/images/profile.png")),
        onPressed: () {},
      )
    ],
  );
}

Drawer side() {
  return Drawer(
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
  );
}