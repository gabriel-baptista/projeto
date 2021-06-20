import 'package:flutter/material.dart';

class HomeRestaurant extends StatefulWidget {
  @override
  _HomeRestaurantState createState() => _HomeRestaurantState();
}

class _HomeRestaurantState extends State<HomeRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color.fromRGBO(250, 250, 250, 1),
        ),
        title: Text(
          "FoodBreak",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(215, 0, 0, 1),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        elevation: 0,
      ),
      body: SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (notification) {
            notification.disallowGlow();
            return true;
          },
          child: SingleChildScrollView(
            child: Container(
              color: Color.fromRGBO(250, 250, 250, 1),
              padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        // da uma elevação no card
                        elevation: 3,
                        // deixar o card e a sombra transparente
                        color: Colors.transparent,
                        shadowColor: Colors.transparent,
                        // cria um botao
                        child: ElevatedButton(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.assignment_rounded,
                                  size: 100,
                                ),
                                Text(
                                  "Pedidos",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // estiliza o botão
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(215, 0, 0, 1),
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          onPressed:
                              () {}, // faz um ação se o botão for pressionado
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        // da uma elevação no card
                        elevation: 3,
                        // deixar o card e a sombra transparente
                        color: Colors.transparent,
                        shadowColor: Colors.transparent,
                        // cria um botao
                        child: ElevatedButton(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.restaurant_menu_rounded,
                                  size: 100,
                                ),
                                Text(
                                  "Menu",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // estiliza o botão
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(215, 0, 0, 1),
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/menuRestaurant');
                          }, // faz um ação se o botão for pressionado
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        // da uma elevação no card
                        elevation: 3,
                        // deixar o card e a sombra transparente
                        color: Colors.transparent,
                        shadowColor: Colors.transparent,
                        // cria um botao
                        child: ElevatedButton(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.account_circle_rounded,
                                  size: 100,
                                ),
                                Text(
                                  "Perfil",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // estiliza o botão
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(215, 0, 0, 1),
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed('/profileRestaurant');
                          }, // faz um ação se o botão for pressionado
                        ),
                      ),
                    ],
                  ),
                  // Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
