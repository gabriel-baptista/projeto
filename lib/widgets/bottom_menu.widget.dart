// import 'package:flutter/material.dart';

// class BottomMenu extends StatelessWidget {
//   final bool isSelected;
//   final String text;
//   final IconData icon;

//   const BottomMenu({Key key, this.isSelected, this.text, this.icon});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {},
//       child: Container(
//         height: 80,
//         child: Column(
//           children: [
//             Icon(
//               icon,
//               color: isSelected
//                   ? Color.fromRGBO(246, 0, 0, 1)
//                   : Colors.grey.shade700,
//               size: 32,
//             ),
//             Text(
//               text,
//               style: TextStyle(
//                 fontSize: 12.8,
//                 color: isSelected
//                     ? Color.fromRGBO(246, 0, 0, 1)
//                     : Colors.grey.shade700,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
