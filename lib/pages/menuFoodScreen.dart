import 'package:flutter/material.dart';
import 'package:projeto/widgets/menuFood_item.dart';

class MenuFood extends StatefulWidget {
  @override
  _MenuFoodState createState() => _MenuFoodState();
}

class _MenuFoodState extends State<MenuFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // criando a appbar
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color.fromRGBO(215, 0, 0, 1),
        ),
        title: Text(
          "Restaurante",
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
                Image.asset("img/restaurante.jpg", fit: BoxFit.contain),
                // espaçamneto
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        'Menu',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                //puxa os widgets dos restaurantes
                MenuFoodItem(),
              ],
            ),
          ),
        ),
      ),
      // botão flutuante que fica no meio da barra de navegação inferior
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: buildFloatButtonBottombar(),
    );
  }

  Widget buildFloatButtonBottombar() {
    // constrói o botão flutuante da menu inferior
    return Container(
      height: 100,
      color: Colors.transparent,
      padding: const EdgeInsets.fromLTRB(0, 0, 5, 35),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(215, 0, 0, 1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.attach_money,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}