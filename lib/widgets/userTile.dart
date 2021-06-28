// faz a listagem de cada usuario na tela de perfil de usuario

import 'package:flutter/material.dart';
import 'package:projeto/models/user.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(
            radius: 100,
            child: Icon(
              Icons.fastfood_rounded,
              size: 80,
            ),
          )
        : Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 100,
                child: ClipOval(
                  child: Image.network(
                    user.avatarUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          );
    return SafeArea(
      // desabilita o efeito que aparece quando rola tudo pra cima ou tudo pra baixo
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
          notification.disallowGlow();
          return true;
        },
        child: SingleChildScrollView(
          child: Container(
            // color: Color.fromRGBO(255, 255, 255, 1),
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(25, 55, 25, 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // foto do usuario
                  Row(
                    children: [
                      Spacer(),
                      avatar,
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
                            // hintText: "ROBS Restaurante",
                            hintText: user.name,
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
                            // hintText: "Rua Capitão Neco, Centro - 151",
                            hintText: user.endereco,
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
                            // hintText: "(11) 123456789",
                            hintText: user.celular,
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
                            hintText: user.cpf,
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
    );
  }
}
