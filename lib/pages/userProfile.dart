import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Color.fromRGBO(215, 0, 0, 1),
          ),
          title: Text(
            "Perfil",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(215, 0, 0, 1),
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(250, 250, 250, 1),
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.mode_rounded,
                color: Color.fromRGBO(215, 0, 0, 1),
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 10,
            ),
            IconButton(
              icon: Icon(
                Icons.logout,
                color: Color.fromRGBO(215, 0, 0, 1),
              ),
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/login', (Route<dynamic> route) => false);
              },
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: SafeArea(
          // desabilita o efeito que aparece quando rola tudo pra cima ou tudo pra baixo
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (notification) {
              notification.disallowGlow();
              return true;
            },
            child: SingleChildScrollView(
              child: Container(
                color: Color.fromRGBO(255, 255, 255, 1),
                child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(25, 55, 25, 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      // foto do usuario
                      Row(
                        children: [
                          Spacer(),
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 70,
                            child: ClipOval(
                              child: Image.asset(
                                // "img/user_photo.jpeg",
                                "img/robsday.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      // icone do campo nome
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Icon(
                              Icons.account_circle_outlined,
                              size: 40,
                              semanticLabel: "Perfil do Usuário",
                            ),
                          ),
                          // campo nome
                          Flexible(
                            child: Container(
                              child: TextField(
                                enabled: false,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Gabriel",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          // campo sobrenome
                          Flexible(
                            child: Container(
                              child: TextField(
                                enabled: false,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Baptista",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                            child: Icon(
                              Icons.home_rounded,
                              size: 40,
                            ),
                          ),
                          Flexible(
                            child: TextField(
                              enabled: false,
                              decoration: InputDecoration(
                                hintText: "Rua Capitão Neco, Centro - 151",
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                            child: Icon(
                              Icons.home_rounded,
                              color: Colors.transparent,
                              size: 40,
                            ),
                          ),
                          Flexible(
                            child: TextField(
                              enabled: false,
                              decoration: InputDecoration(
                                hintText: "Cruzeiro-SP",
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      // campo data de nascimento
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                            child: Icon(
                              Icons.calendar_today_outlined,
                              size: 40,
                            ),
                          ),
                          Flexible(
                            child: TextField(
                              enabled: false,
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                hintText: "06/03/2002",
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      // campo telefone
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                            child: Icon(
                              Icons.call_outlined,
                              size: 40,
                            ),
                          ),
                          Flexible(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabled: false,
                                hintText: "(11) 123456789",
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      // campo cpf
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                            child: Icon(
                              Icons.badge,
                              size: 40,
                            ),
                          ),
                          Flexible(
                            child: TextField(
                              enabled: false,
                              decoration: InputDecoration(
                                hintText: "12345678911",
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        // botão flutuante que fica no meio da barra de navegação inferior
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: buildFloatButtonBottombar(),
        // Barra de navegção inferior
        bottomNavigationBar: buildBottomBar(),
      ),
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
                    onTap: () {
                      Navigator.of(context).popAndPushNamed('/favorites');
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
          Spacer(),
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
                    onTap: () {},
                    child: Container(
                      height: 80,
                      child: Column(
                        children: [
                          Icon(
                            Icons.account_circle_rounded,
                            color: Color.fromRGBO(215, 0, 0, 1),
                            size: 32,
                          ),
                          Text(
                            "Perfil",
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
