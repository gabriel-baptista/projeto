import 'package:flutter/material.dart';
import 'package:projeto/models/modelMenu.dart';
import 'package:projeto/pages/favorites.dart';
import 'package:projeto/pages/homeFoodBreak.dart';
import 'package:projeto/pages/loginScreen.dart';
import 'package:projeto/pages/menuFoodScreen.dart';
import 'package:projeto/pages/registerScreen.dart';
import 'package:projeto/pages/requestScreen.dart';
import 'package:projeto/pages/userProfile.dart';
import 'package:projeto/provider/data_menu.dart';
import 'package:projeto/provider/data_restaurants.dart';
import 'package:projeto/restaurant/foodForm.dart';
import 'package:projeto/restaurant/homeRestaurant.dart';
import 'package:projeto/restaurant/loginRestaurant.dart';
import 'package:projeto/restaurant/menuRestaurant.dart';
import 'package:projeto/restaurant/profileRestaurant.dart';
import 'package:projeto/restaurant/registerRestaurant.dart';
import 'package:projeto/widgets/routes.dart';
import 'package:provider/provider.dart';

void main() {
  // runApp(MyApp());
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => DataRestaurants(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => DataMenu(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
        theme: ThemeData(
          primarySwatch: Colors.red,
          // primaryColor: Color.fromRGBO(215, 0, 0, 0.75),
        ),
        // home: RegisterScreen(),
        // home: HomeFoodBreak(),
        // home: Favorites(),
        routes: <String, WidgetBuilder>{
          // rotas cliente
          '/login': (BuildContext context) => new LoginScreen(),
          '/register': (BuildContext context) => new RegisterScreen(),
          '/home': (BuildContext context) => new HomeFoodBreak(),
          '/favorites': (BuildContext context) => new Favorites(),
          '/requests': (BuildContext context) => new RequestScreen(),
          '/profile': (BuildContext context) => new UserProfile(),
          "/menuFood": (BuildContext context) => new MenuFood(),

          // rotas restaurante
          '/loginRestaurant': (BuildContext context) => new LoginRestaurant(),
          '/registerRestaurant': (BuildContext context) =>
              new RegisterRestaurant(),
          '/homeRestaurant': (BuildContext context) => new HomeRestaurant(),
          '/profileRestaurant': (BuildContext context) =>
              new ProfileRestaurant(),
          '/menuRestaurant': (BuildContext context) => new MenuRestaurant(),
          '/foodForm': (BuildContext context) => new FoodForm(),

          AppRoutes.FOOD_FORM: (_) => FoodForm(),
        },
      ),
    ),
  );
}
