// import 'package:flutter/material.dart';
// import 'package:projeto/provider/data_menu.dart';
// import 'package:projeto/widgets/menuList.dart';
// import 'package:provider/provider.dart';

// class MenuRestaurant extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final DataMenu menu = Provider.of(context);

//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(
//           color: Color.fromRGBO(215, 0, 0, 1),
//         ),
//         title: Text(
//           "Menu",
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
//               Icons.add,
//               color: Color.fromRGBO(215, 0, 0, 1),
//             ),
//             onPressed: () {
//               Navigator.of(context).pushNamed('/foodForm');
//             },
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: menu.count,
//         itemBuilder: (ctx, i) => MenuList(
//           menu.byIndex(i),
//         ),
//       ),
//     );
//   }
// }
