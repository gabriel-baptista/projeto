import 'package:flutter/material.dart';

class ProfileRestaurant extends StatefulWidget {
  @override
  _ProfileRestaurantState createState() => _ProfileRestaurantState();
}

class _ProfileRestaurantState extends State<ProfileRestaurant> {
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
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                            child: Icon(
                              Icons.account_circle_rounded,
                              size: 40,
                            ),
                          ),
                          Flexible(
                            child: TextField(
                              enabled: false,
                              decoration: InputDecoration(
                                hintText: "ROBS Restaurante",
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
                                hintText: "12345678912345",
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
      ),
    );
  }
}
