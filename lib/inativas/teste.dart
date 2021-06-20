// //  tela principal da listagem de ususarios

// import 'package:flutter/material.dart';
// import 'package:projeto/provider/data_restaurants.dart';
// import 'package:projeto/widgets/restaurant_list.dart';
// import 'package:provider/provider.dart';

// class UserList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final DataRestaurants restaurants = Provider.of(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Lista de usuários"),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(
//               Icons.add,
//             ),
//             onPressed: () {},
//           )
//         ],
//       ),
//       body: ListView.builder(
//           itemCount: restaurants.count,
//           itemBuilder: (ctx, i) => RestaurantList(restaurants.byIndex(i))),
//     );
//   }
// }
