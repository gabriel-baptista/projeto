/*// import 'dart:js';
import 'package:flutter/material.dart';
// import 'package:projeto/pages/favorites.dart';
import 'package:projeto/widgets/activity_item.dart';
// import 'package:projeto/widgets/bottom_menu.widget.dart';
// import 'package:projeto/widgets/button_tab.widget.dart';
import 'package:projeto/widgets/history.widget.dart';

class HomeFoodBreak extends StatefulWidget {
  @override
  _HomeFoodBreakState createState() => _HomeFoodBreakState();
}

class _HomeFoodBreakState extends State<HomeFoodBreak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // criando a appbar
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
                buildSearchBar(context),
                // espaçamneto
                SizedBox(
                  height: 10,
                ),
                // botões de sugestões / favoritos e lista horizontal
                buildHistory(),
                // card de Promoções
                buildPromotion(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        'Onde pedir',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                // faz a listagem de restaurantes
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
      bottomNavigationBar: buildBottomBar(context),
    );
  }

  // cria a appbar
  Widget buildSearchBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      // Linha dos ícones
      child: Column(
        children: [
          // espaçamento
          SizedBox(
            height: 20,
          ),
          // barra de pesquisa
          // detecta quando é clicado na barra de pesquisa
          GestureDetector(
            onTap: () {
              print("On tap");
            },
            // borda da barra de pesquisa
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black38,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              // conteúdo dentro da barra de pesquisa
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Pesquise um restaurante aqui',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHistory() {
    // int count = 0;
    List<String> listFiltro = [
      "Pizza",
      "Lanches",
      "Burguer",
      "Açai e Sorvetes",
      "Porções",
      "Massas",
      "Carnes",
      "Árabe",
      "Salgado",
      "Doce",
      "Batata",
      "Pastel",
      "Peixes",
      "Bebidas"
    ];

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text(
                'O que pedir',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        // criando a lista horizontal
        SizedBox(height: 10),
        Container(
          height: 110,
          margin: const EdgeInsets.only(left: 5),
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (notification) {
              notification.disallowGlow();
              return true;
            },
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listFiltro.length,
              itemBuilder: (_, index) {
                // Lista horizontal
                return History();
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPromotion() {
    // constrói o card de promoções
    return Card(
      elevation: 3, // da uma elevação para o card
      margin: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Icon(
                Icons.attach_money_outlined,
                color: Color.fromRGBO(215, 0, 0, 1),
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Seleção Especial'),
                  Text(
                    'Promoções Disponíveis',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              // Spacer(),
              // o Expanded faz algo parecido ao spacer, mas ele faz com que a child use todo o espaço disponivel em branco
              Expanded(
                child: Container(),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
                color: Color.fromRGBO(215, 0, 0, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBottomBar(context) {
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
                    onTap: () {},
                    child: Container(
                      height: 80,
                      child: Column(
                        children: [
                          Icon(
                            Icons.food_bank_rounded,
                            color: Color.fromRGBO(215, 0, 0, 1),
                            size: 32,
                          ),
                          Text(
                            "Início",
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
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/favorites');
                    },
                    child: Container(
                      height: 80,
                      child: Column(
                        children: [
                          Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.grey.shade700,
                            size: 32,
                          ),
                          Text(
                            "Favoritos",
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
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/requests');
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
                      Navigator.of(context).pushNamed('/profile');
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
            'Carterira',
            style: TextStyle(
              color: Color.fromRGBO(215, 0, 0, 1),
            ),
          ),
        ],
      ),
    );
  }
}
*/
