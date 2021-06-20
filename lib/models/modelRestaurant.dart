// armazena os dados do restaurante

import 'package:flutter/material.dart';

class ModelRestaurant {
  final String cnpj;
  final String nameRestaurant;
  final String descriptionRestaurant;
  final String enderecoRestaurant;
  final String cellRestaurant;
  final String passwordRestaurant;
  final String imgRestaurant;

  const ModelRestaurant({
    @required this.cnpj,
    @required this.nameRestaurant,
    @required this.descriptionRestaurant,
    @required this.enderecoRestaurant,
    @required this.cellRestaurant,
    @required this.passwordRestaurant,
    @required this.imgRestaurant,
  });
}
