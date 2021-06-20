import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto/models/modelRestaurant.dart';

class RestaurantList extends StatelessWidget {
  final ModelRestaurant restaurant;
  const RestaurantList(this.restaurant);

  @override
  Widget build(BuildContext context) {
    final avatar =
        restaurant.imgRestaurant == null || restaurant.imgRestaurant.isEmpty
            ? CircleAvatar(
                child: Icon(
                  Icons.fastfood_rounded,
                ),
                radius: 35,
              )
            : CircleAvatar(
                backgroundImage: NetworkImage(
                  restaurant.imgRestaurant,
                ),
                radius: 35,
              );
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed("/menuFood");
        },
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  // Column(
                  //   children: [
                  //     CircleAvatar(
                  //       backgroundColor: Colors.transparent,
                  //       radius: 40,
                  //       child: Image.asset(
                  //         "img/RestaurantLogo.jpg",
                  //         fit: BoxFit.fill,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  avatar,
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text.rich(
                            TextSpan(
                              // vai pegar o nome do restaurante na classe RestaurantList
                              text: restaurant.nameRestaurant,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            // vai pegar a descrição do restaurante na classe RestaurantList
                            restaurant.descriptionRestaurant,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            // vai pegar o horário de funcionamento do restaurante na classe RestaurantList
                            restaurant.enderecoRestaurant,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    // ListTile(
    //   leading: avatar,
    //   title: Text(restaurant.nameRestaurant),
    //   subtitle: Text(restaurant.descriptionRestaurant),
    //   trailing: Container(
    //     width: 100,
    //     child: Row(
    //       children: <Widget>[
    //         IconButton(
    //           icon: Icon(
    //             Icons.edit,
    //           ),
    //           color: Colors.orange,
    //           onPressed: () {},
    //         ),
    //         IconButton(
    //           icon: Icon(
    //             Icons.delete,
    //           ),
    //           color: Colors.red,
    //           onPressed: () {},
    //         ),
    //       ],
    //     ),
    //   ),
    // );

    /*Card(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed("/menuFood");
        },
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  // Column(
                  //   children: [
                  //     CircleAvatar(
                  //       backgroundColor: Colors.transparent,
                  //       radius: 40,
                  //       child: Image.asset(
                  //         "img/RestaurantLogo.jpg",
                  //         fit: BoxFit.fill,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  avatar,
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text.rich(
                            TextSpan(
                              // vai pegar o nome do restaurante na classe RestaurantList
                              text: restaurant.nameRestaurant,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            // vai pegar a descrição do restaurante na classe RestaurantList
                            restaurant.descriptionRestaurant,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            // vai pegar o horário de funcionamento do restaurante na classe RestaurantList
                            restaurant.enderecoRestaurant,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );*/
  }
}
