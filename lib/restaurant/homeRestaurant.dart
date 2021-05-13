import 'package:flutter/material.dart';

class HomeRestaurant extends StatefulWidget {
  @override
  _HomeRestaurantState createState() => _HomeRestaurantState();
}

class _HomeRestaurantState extends State<HomeRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurante"),
      ),
      body: Container(
        color: Color.fromRGBO(215, 0, 0, 1),
      ),
    );
  }
}
