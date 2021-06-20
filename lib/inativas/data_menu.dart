// // crud do menu

// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:projeto/data/dummy_menu.dart';
// import 'package:projeto/models/modelMenu.dart';

// class DataMenu with ChangeNotifier {
//   // final Map<dynamic, dynamic> _menuFoods = {...DUMMY_MENU};
//   final Map<dynamic, ModelMenu> _menuFoods = {...DUMMY_MENU};

//   // pega os dados das comidas do menu
//   List<ModelMenu> get all {
//     return [..._menuFoods.values];
//   }

//   // conta quantos pratos tem no menu
//   int get count {
//     return _menuFoods.length;
//   }

//   // acessa o prato de acordo com o index (contador)
//   ModelMenu byIndex(int i) {
//     return _menuFoods.values.elementAt(i);
//   }

//   // insert and update
//   void put(ModelMenu modelMenu) {
//     if (modelMenu == null) {
//       return;
//     }
//     // update
//     if (_menuFoods != null &&
//         modelMenu.id.trim().isNotEmpty &&
//         _menuFoods.containsKey(modelMenu.id)) {
//       _menuFoods.update(
//         modelMenu.id,
//         (value) => ModelMenu(
//           id: modelMenu.id,
//           nameFood: modelMenu.nameFood,
//           descriptionFood: modelMenu.descriptionFood,
//           precoFood: modelMenu.precoFood,
//           imgFood: modelMenu.imgFood,
//         ),
//       );
//     }
//     // insert
//     else {
//       final id = Random().nextInt(9999).toString();
//       _menuFoods.putIfAbsent(
//         id,
//         () => ModelMenu(
//           id: id,
//           nameFood: modelMenu.nameFood,
//           descriptionFood: modelMenu.descriptionFood,
//           precoFood: modelMenu.precoFood,
//           imgFood: modelMenu.imgFood,
//         ),
//       );
//     }
//     notifyListeners();
//   }

//   // remove
//   void remove(ModelMenu modelMenu) {
//     if (modelMenu != null && modelMenu.id != null) {
//       _menuFoods.remove(modelMenu.id);
//       notifyListeners();
//     }
//   }
// }
