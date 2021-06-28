// criando a tela de restaurantes favoritos do usuario

import 'package:flutter/material.dart';
import 'package:projeto/widgets/activity_item.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // criando a appbar
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color.fromRGBO(215, 0, 0, 1),
        ),
        title: Text(
          "Favoritos",
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
      // corpo do app
      body: SafeArea(
        // desabilita o efeito que aparece quando rola tudo pra cima ou tudo pra baixo
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (notification) {
            notification.disallowGlow();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                // espaçamneto
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        'Restaurantes Favoritos',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                //puxa os widgets dos restaurantes
                ActivityItem(),
              ],
            ),
          ),
        ),
      ),
      // botão flutuante que fica no meio da barra de navegação inferior
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: buildFloatButtonBottombar(),
      // Barra de navegção inferior
      bottomNavigationBar: buildBottomBar(),
    );
  }

  Widget buildBottomBar() {
    // construindo a barra de navegação inferior
    return Container(
      height: 50,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 80,
                      child: Column(
                        children: [
                          Icon(
                            Icons.food_bank_rounded,
                            color: Colors.grey.shade700,
                            size: 32,
                          ),
                          Text(
                            "Início",
                            style: TextStyle(
                              fontSize: 12.8,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 80,
                      child: Column(
                        children: [
                          Icon(
                            Icons.favorite_rounded,
                            color: Color.fromRGBO(215, 0, 0, 1),
                            size: 32,
                          ),
                          Text(
                            "Favoritos",
                            style: TextStyle(
                              fontSize: 12.8,
                              color: Color.fromRGBO(215, 0, 0, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).popAndPushNamed('/requests');
                    },
                    child: Container(
                      height: 80,
                      child: Column(
                        children: [
                          Icon(
                            Icons.receipt_long_outlined,
                            color: Colors.grey.shade700,
                            size: 32,
                          ),
                          Text(
                            "Pedidos",
                            style: TextStyle(
                              fontSize: 12.8,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).popAndPushNamed('/profile');
                    },
                    child: Container(
                      height: 80,
                      child: Column(
                        children: [
                          Icon(
                            Icons.account_circle_rounded,
                            color: Colors.grey.shade700,
                            size: 32,
                          ),
                          Text(
                            "Perfil",
                            style: TextStyle(
                              fontSize: 12.8,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFloatButtonBottombar() {
    // constrói o botão flutuante da menu inferior
    return Container(
      height: 100,
      color: Colors.transparent,
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color.fromRGBO(215, 0, 0, 1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.attach_money,
              color: Colors.white,
            ),
          ),
          Text(
            'Pagar',
            style: TextStyle(
              color: Color.fromRGBO(215, 0, 0, 1),
            ),
          ),
        ],
      ),
    );
  }
}
