import 'package:flutter/material.dart';

class ProfileRestaurant extends StatelessWidget {
  String nome, cnpj, descricao, endereco, celular, imagem, senha;

  ProfileRestaurant(
      {this.nome,
      this.cnpj,
      this.descricao,
      this.endereco,
      this.celular,
      this.imagem,
      this.senha});

  @override
  Widget build(BuildContext context) {
    final imagemRestaurante = imagem == null || imagem.isEmpty
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
                    imagem,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.transparent,
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
          leading: IconButton(
            icon: Icon(
              Icons.home_rounded,
              color: Color.fromRGBO(215, 0, 0, 1),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/home');
            },
          ),
          actions: <Widget>[
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
                          imagemRestaurante,
                          // CircleAvatar(
                          // backgroundColor: Colors.transparent,
                          // radius: 70,
                          // child: Icon(
                          //   Icons.fastfood_rounded,
                          // size: 40,
                          // ),
                          // child: ClipOval(
                          // child: Image.asset(
                          //   // "img/user_photo.jpeg",
                          //   "img/robsday.jpg",
                          //   fit: BoxFit.fill,
                          // ),
                          // ),
                          // ),
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
                                hintText: nome,
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
                                hintText: endereco,
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
                      // campo de descrição do restaurante
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                            child: Icon(
                              Icons.description_rounded,
                              size: 40,
                            ),
                          ),
                          Flexible(
                            child: TextField(
                              enabled: false,
                              decoration: InputDecoration(
                                hintText: descricao,
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
                                hintText: celular,
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
                                hintText: cnpj,
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

/*class ProfileRestaurant extends StatefulWidget {
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
}*/
