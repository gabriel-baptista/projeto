// // formulario para criar pratos de comidas

// import 'package:flutter/material.dart';
// import 'package:projeto/models/modelMenu.dart';
// import 'package:projeto/provider/data_menu.dart';
// import 'package:provider/provider.dart';

// class FoodForm extends StatelessWidget {
//   final _formFood = GlobalKey<FormState>();
//   final Map<String, dynamic> _formFoodData = {};

//   void _loadFormFoodData(ModelMenu modelMenu) {
//     if (modelMenu != null) {
//       _formFoodData['id'] = modelMenu.id;
//       _formFoodData['nameFood'] = modelMenu.nameFood;
//       _formFoodData['descriptionFood'] = modelMenu.descriptionFood;
//       _formFoodData['preco'] = modelMenu.precoFood;
//       _formFoodData['img'] = modelMenu.imgFood;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final ModelMenu modelMenu = ModalRoute.of(context).settings.arguments;
//     _loadFormFoodData(modelMenu);

//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(
//           color: Color.fromRGBO(215, 0, 0, 1),
//         ),
//         title: Text(
//           "Criar prato",
//           style: TextStyle(
//             fontSize: 32,
//             fontWeight: FontWeight.bold,
//             color: Color.fromRGBO(215, 0, 0, 1),
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Color.fromRGBO(250, 250, 250, 1),
//         elevation: 0,
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(
//               Icons.save,
//               color: Color.fromRGBO(215, 0, 0, 1),
//             ),
//             onPressed: () {
//               final isValid = _formFood.currentState.validate();
//               if (isValid) {
//                 _formFood.currentState.save();

//                 Provider.of<DataMenu>(context, listen: false).put(
//                   ModelMenu(
//                     id: _formFoodData['id'],
//                     nameFood: _formFoodData['nameFood'],
//                     descriptionFood: _formFoodData['descriptionFood'],
//                     precoFood: _formFoodData['preco'],
//                     imgFood: _formFoodData['img'],
//                   ),
//                 );
//                 Navigator.of(context).pop();
//               }
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(15),
//         child: Form(
//           key: _formFood,
//           child: Column(
//             children: <Widget>[
//               TextFormField(
//                 initialValue: _formFoodData['id'],
//                 decoration: InputDecoration(
//                   labelText: "Id",
//                 ),
//                 validator: (value) {
//                   if (value == null || value.trim().isEmpty) {
//                     return "Você deve informar um id para o prato";
//                   }
//                   return null;
//                 },
//                 onSaved: (value) => _formFoodData['nameFood'] = value,
//               ),
//               TextFormField(
//                 initialValue: _formFoodData['nameFood'],
//                 decoration: InputDecoration(
//                   labelText: "Nome do prato",
//                 ),
//                 validator: (value) {
//                   if (value == null || value.trim().isEmpty) {
//                     return "Você deve informar um nome para o prato";
//                   }
//                   return null;
//                 },
//                 onSaved: (value) => _formFoodData['nameFood'] = value,
//               ),
//               TextFormField(
//                 initialValue: _formFoodData['descriptionFood'],
//                 decoration: InputDecoration(
//                   labelText: "Descrição",
//                 ),
//                 onSaved: (value) => _formFoodData['descriptionFood'] = value,
//               ),
//               TextFormField(
//                 initialValue: _formFoodData['preco'],
//                 decoration: InputDecoration(
//                   labelText: "Preço",
//                   helperText: "Use ponto ao invés de vírgula",
//                 ),
//                 validator: (value) {
//                   if (value == null || value.trim().isEmpty) {
//                     return "Você deve informar um nome para o prato";
//                   } else if (value.trim().length < 5) {
//                     return "Por favor insira um valor parecido com \"15.55\"";
//                   }

//                   return null;
//                 },
//                 onSaved: (value) => _formFoodData['preco'] = value,
//               ),
//               TextFormField(
//                 initialValue: _formFoodData['img'],
//                 decoration: InputDecoration(
//                   labelText: "Imagen",
//                 ),
//                 onSaved: (value) => _formFoodData['img'] = value,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
