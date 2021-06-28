// tela de perfil do usuário

import 'package:flutter/material.dart';
import 'package:projeto/provider/users.dart';
import 'package:projeto/widgets/userTile.dart';
import 'package:provider/provider.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);
    return Scaffold(
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
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        actions: <Widget>[
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
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
