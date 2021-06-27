// crud

// import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:projeto/data/dummy_restaurants.dart';
import 'package:projeto/models/modelRestaurant.dart';

class DataRestaurants with ChangeNotifier {
  // final Map<String, ModelRestaurant> _restaurants = {...DUMMY_RESTAURANTS};
  final Map<String, ModelRestaurant> _restaurants = {};

  // pega os dados dos restautantes
  List<ModelRestaurant> get all {
    return [..._restaurants.values];
  }

  // conta quantos itens tem
  int get count {
    return _restaurants.length;
  }

  // acessa o item de acordo com o index (contador)
  ModelRestaurant byIndex(int i) {
    return _restaurants.values.elementAt(i);
  }

  // insert and update method
  void put(ModelRestaurant restaurant) {
    if (restaurant == null) {
      return;
    }

    // update
    if (_restaurants != null && _restaurants.containsKey(restaurant.cnpj)) {
      _restaurants.update(
        restaurant.cnpj,
        (value) => ModelRestaurant(
          cnpj: restaurant.cnpj,
          nameRestaurant: restaurant.nameRestaurant,
          descriptionRestaurant: restaurant.descriptionRestaurant,
          enderecoRestaurant: restaurant.enderecoRestaurant,
          cellRestaurant: restaurant.cellRestaurant,
          passwordRestaurant: restaurant.passwordRestaurant,
          imgRestaurant: restaurant.imgRestaurant,
        ),
      );
    }

    // insert
    else {
      // final cnpj = Random().nextDouble().toString();
      _restaurants.putIfAbsent(
        restaurant.cnpj,
        () => ModelRestaurant(
          cnpj: restaurant.cnpj,
          nameRestaurant: restaurant.nameRestaurant,
          descriptionRestaurant: restaurant.descriptionRestaurant,
          enderecoRestaurant: restaurant.enderecoRestaurant,
          cellRestaurant: restaurant.cellRestaurant,
          passwordRestaurant: restaurant.passwordRestaurant,
          imgRestaurant: restaurant.imgRestaurant,
        ),
      );
    }
    notifyListeners();
  }

  // remove method
  void remove(ModelRestaurant restaurant) {
    if (restaurant != null && restaurant.cnpj != null) {
      _restaurants.remove(restaurant.cnpj);
      notifyListeners();
    }
  }
}
