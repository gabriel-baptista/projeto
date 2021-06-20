import 'dart:math';
import 'package:flutter/material.dart';
import 'package:projeto/data/dummy_food.dart';
import 'package:projeto/models/modelMenu.dart';

class DataMenu with ChangeNotifier {
  final Map<String, ModelMenu> _itensMenu = {...DUMMY_FOOD};
  // esse metodo pega o conteudo dos itens do menu
  List<ModelMenu> get all {
    return [..._itensMenu.values];
  }

  // esse metodo conta quantos itens tem dentro do menu
  int get count {
    return _itensMenu.length;
  }

  // acessa o item do menu de acordo com o index (contador)
  ModelMenu byIndex(int i) {
    return _itensMenu.values.elementAt(i);
  }

  void put(ModelMenu modelMenu) {
    if (modelMenu == null) {
      return;
    }

    // update
    if (_itensMenu != null &&
        modelMenu.id.trim().isNotEmpty &&
        _itensMenu.containsKey(modelMenu.id)) {
      _itensMenu.update(
        modelMenu.id,
        (value) => ModelMenu(
          id: modelMenu.id,
          nameFood: modelMenu.nameFood,
          descriptionFood: modelMenu.descriptionFood,
          priceFood: modelMenu.priceFood,
          imgFood: modelMenu.imgFood,
        ),
      );
    }
    // insert
    else {
      final id = Random().nextInt(9999).toString();
      _itensMenu.putIfAbsent(
        id,
        () => ModelMenu(
          id: id,
          nameFood: modelMenu.nameFood,
          descriptionFood: modelMenu.descriptionFood,
          priceFood: modelMenu.priceFood,
          imgFood: modelMenu.imgFood,
        ),
      );
    }
    notifyListeners();
  }

  void remove(ModelMenu modelMenu) {
    if (modelMenu != null && modelMenu.id != null) {
      _itensMenu.remove(modelMenu.id);
      notifyListeners();
    }
  }
}
