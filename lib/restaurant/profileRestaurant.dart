// tela de perfil do restaurante

import 'package:flutter/material.dart';
import 'package:projeto/provider/data_restaurants.dart';
import 'package:projeto/widgets/restaurantTile.dart';
import 'package:provider/provider.dart';

class ProfileRestaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DataRestaurants dataRestaurants = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color.fromRGBO(215, 0, 0, 1),
        ),
        title: Text(
          "Perfil",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(215, 0, 0, 1),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        actions: <Widget>[
          SizedBox(
            width: 10,
          ),
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Color.fromRGBO(215, 0, 0, 1),
            ),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/login', (Route<dynamic> route) => false);
            },
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (ctx, i) => RestaurantTile(dataRestaurants.byIndex(i)),
      ),
    );
  }
}
