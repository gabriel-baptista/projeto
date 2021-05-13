import 'package:flutter/material.dart';
import 'package:projeto/pages/favorites.dart';
import 'package:projeto/pages/homeFoodBreak.dart';
import 'package:projeto/pages/loginScreen.dart';
import 'package:projeto/pages/registerScreen.dart';
import 'package:projeto/pages/requestScreen.dart';
import 'package:projeto/pages/userProfile.dart';
import 'package:projeto/restaurant/homeRestaurant.dart';
import 'package:projeto/restaurant/loginRestaurant.dart';
import 'package:projeto/restaurant/registerRestaurant.dart';

void main() {
  // runApp(MyApp());
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      // home: RegisterScreen(),
      // home: HomeFoodBreak(),
      // home: Favorites(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new HomeFoodBreak(),
        '/favorites': (BuildContext context) => new Favorites(),
        '/login': (BuildContext context) => new LoginScreen(),
        '/register': (BuildContext context) => new RegisterScreen(),
        '/requests': (BuildContext context) => new RequestScreen(),
        '/profile': (BuildContext context) => new UserProfile(),
        '/loginRestaurant': (BuildContext context) => new LoginRestaurant(),
        '/registerRestaurant': (BuildContext context) =>
            new RegisterRestaurant(),
        '/homeRestaurant': (BuildContext context) => new HomeRestaurant(),
      },
    ),
  );
}
