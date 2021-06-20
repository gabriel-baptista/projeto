import 'package:flutter/material.dart';

class ModelMenu {
  final String id;
  final String nameFood;
  final String descriptionFood;
  final String priceFood;
  final String imgFood;

  const ModelMenu({
    this.id,
    @required this.nameFood,
    @required this.descriptionFood,
    @required this.priceFood,
    @required this.imgFood,
  });
}
