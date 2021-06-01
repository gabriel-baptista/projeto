import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterRestaurant extends StatefulWidget {
  @override
  _RegisterRestaurantState createState() => _RegisterRestaurantState();
}

class _RegisterRestaurantState extends State<RegisterRestaurant> {
  TextEditingController _controllerNomeRestaurant = TextEditingController();
  TextEditingController _controllerCelularRestaurant = TextEditingController();
  TextEditingController _controllerCNPJ = TextEditingController();
  TextEditingController _controllerSenhaRestaurant = TextEditingController();
  TextEditingController _controllerEnderecoRestaurant = TextEditingController();
  TextEditingController _controllerDescricaoRestaurant = TextEditingController();
  String _textoAviso = "";

  void _verificaCampos() {
    String nome = _controllerNomeRestaurant.text;
    String celular = _controllerCelularRestaurant.text;
    String cnpj = _controllerCNPJ.text;
    String senha = _controllerSenhaRestaurant.text;
    String endereco = _controllerEnderecoRestaurant.text;
    String descricao = _controllerDescricaoRestaurant.text;

    if ((nome == "") ||
        (celular == "") ||
        (cnpj == "") ||
        (senha == "") ||
        (endereco == "") ||
        (descricao == "")) {
      setState(() {
        _textoAviso =
            "Pode ser que você esqueceu de preencher algum campo, por favor preencha todos";
      });
    } else {
      setState(() {
        _textoAviso = "Cadastro do restaurante feito com sucesso";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Color.fromRGBO(215, 0, 0, 1),
          ),
          title: Text(
            "Registrar Restaurante",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
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
                color: Color.fromRGBO(255, 255, 255, 1),
                child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(25, 5, 25, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      // icone do campo nome
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Icon(
                              Icons.restaurant_rounded,
                              size: 40,
                              semanticLabel:
                                  "Área para digitar o nome do restaurante",
                            ),
                          ),
                          // campo nome
                          Flexible(
                            child: Container(
                              child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Nome do Restaurante",
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(215, 0, 0, 0.75),
                                    ),
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                                // pega o que o usuário digitou no campo nome
                                controller: _controllerNomeRestaurant,
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
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: "Rua, Bairro - Número",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade600,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(215, 0, 0, 0.75),
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 22,
                              ),
                              // pega o que o usuário digitou no campo data de nascimento
                              controller: _controllerEnderecoRestaurant,
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
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: "Cidade - Estado",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade600,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(215, 0, 0, 0.75),
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 22,
                              ),
                              // pega o que o usuário digitou no campo data de nascimento
                              controller: _controllerDescricaoRestaurant,
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
                              maxLength: 14,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              decoration: InputDecoration(
                                hintText: "Celular - (11) 123456789",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade600,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(215, 0, 0, 0.75),
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 22,
                              ),
                              // pega o que o usuário digitou no campo celular
                              controller: _controllerCelularRestaurant,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      // campo cpf / identificador de usuario
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
                              keyboardType: TextInputType.number,
                              maxLength: 14,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              decoration: InputDecoration(
                                hintText: "CNPJ",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade600,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(215, 0, 0, 0.75),
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 22,
                              ),
                              // pega o que o usuário digitou no campo cpf
                              controller: _controllerCNPJ,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      // campo senha
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Icon(
                              Icons.lock_outline,
                              size: 40,
                            ),
                          ),
                          Flexible(
                            child: TextField(
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Senha",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade600,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(215, 0, 0, 0.75),
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 22,
                              ),
                              // pega o que o usuário digitou no campo senha
                              controller: _controllerSenhaRestaurant,
                            ),
                          ),
                        ],
                      ),
                      // caso aconteça algum erro, o app irá mostrar esse padding com um aviso ao usuário
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
                        child: Text(
                          _textoAviso,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(215, 0, 0, 0.75)),
                        ),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Card(
                        color: Colors.transparent,
                        shadowColor: Colors.transparent,
                        // da uma elevação no card
                        elevation: 3,
                        // cria um botao
                        child: ElevatedButton(
                          child: Text(
                            "Pronto",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 255, 255, 1),
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
                          // faz uma ação se o botão for pressionado
                          onPressed: _verificaCampos,
                        ),
                      )
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
