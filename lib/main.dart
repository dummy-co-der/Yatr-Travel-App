import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/constants.dart';
import 'package:travel/screens/home/home_screen.dart';
import 'package:native_notify/native_notify.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NativeNotify.initialize(382, 'fsCRiLidD7KzL30SlAbMp5', null);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uttarakhand',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        textTheme:
            GoogleFonts.poppinsTextTheme().apply(displayColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );

  }
}
