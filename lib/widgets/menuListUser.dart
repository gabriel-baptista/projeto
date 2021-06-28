// cria cada card de cada prato no menu

import 'package:flutter/material.dart';
import 'package:projeto/models/modelMenu.dart';

class MenuListUser extends StatelessWidget {
  final ModelMenu modelMenu;
  const MenuListUser(this.modelMenu);

  @override
  Widget build(BuildContext context) {
    final price = modelMenu.priceFood;
    final foodImg = modelMenu.imgFood == null || modelMenu.imgFood.isEmpty
        ? CircleAvatar(
            radius: 40,
            child: Icon(
              Icons.fastfood_rounded,
              size: 40,
            ),
          )
        : Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 40,
                child: Image.network(
                  modelMenu.imgFood,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          );
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        child: Wrap(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    foodImg,
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
                                text: modelMenu.nameFood,
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
                              modelMenu.descriptionFood,
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
                              "R\$ $price",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(0, 215, 0, 0.75),
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
          ],
        ),
      ),
    );
  }

  Widget buildTopMenu() {
    return SafeArea(
      // desabilita o efeito que aparece quando rola tudo pra cima ou tudo pra baixo
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
          notification.disallowGlow();
          return true;
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("img/restaurante.jpg", fit: BoxFit.contain),
              // espaçamneto
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
