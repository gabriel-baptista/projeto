// tela de login do applicativo
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto/pages/registerScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _controllerUsuario = TextEditingController();
  TextEditingController _controllerSenhaUsuario = TextEditingController();
  String _textoAviso = "";

  // o método verifica se o usuario e senha estao corretos
  void _verificaLogin() {
    String verificaUsuario = _controllerUsuario.text;
    String verificaSenha = _controllerSenhaUsuario.text;

    if ((verificaUsuario == "123") && (verificaSenha == "123")) {
      setState(() {
        Navigator.of(context).popAndPushNamed('/home');
      });
    } else if (verificaUsuario == null ||
        verificaSenha == null ||
        verificaUsuario != "123" ||
        verificaSenha != "123") {
      setState(() {
        _textoAviso = "CPF ou Senha incorretos";
        limparCampos();
      });
    }
  }

  // o metódo limpa os campos de usuario e senha caso necessário
  void limparCampos() {
    _controllerUsuario.text = "";
    _controllerSenhaUsuario.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(32, 25, 32, 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Image.asset(
                    "img/NovoLogoFoodBreak.png",
                    height: 250,
                  ),
                ),
                // criando o textfield usuário
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    maxLength: 11,
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    cursorColor: Color.fromRGBO(215, 0, 0, 0.75),
                    decoration: InputDecoration(
                      labelText: 'CPF',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(215, 0, 0, 0.75),
                        ),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 28,
                    ),
                    controller: _controllerUsuario,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    cursorColor: Color.fromRGBO(215, 0, 0, 0.75),
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(215, 0, 0, 0.75),
                        ),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 28,
                    ),
                    controller: _controllerSenhaUsuario,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    _textoAviso,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(215, 0, 0, 0.75)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Card(
                  // da uma elevação no card
                  elevation: 3,
                  // deixar o card e a sombra transparente
                  color: Colors.transparent,
                  shadowColor: Colors.transparent,
                  // cria um botao
                  child: ElevatedButton(
                    child: Text(
                      "Entrar",
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
                    onPressed:
                        _verificaLogin, // faz um ação se o botão for pressionado
                  ),
                ),
                // cria um espaço entre um card e outro
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 3,
                  // deixar o card e a sombra transparente
                  color: Colors.transparent,
                  shadowColor: Colors.transparent,
                  child: ElevatedButton(
                    child: Text(
                      "Cadastrar-se",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(255, 255, 255, 1),
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: RichText(
                    // faz uma observação abaixo do botão com uma simulção de um hyperlink
                    text: TextSpan(
                      children: [
                        // texto normal
                        TextSpan(
                          text:
                              "Deseja gerenciar um Restaurante ou Cadastrar um? ",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        // texto hyperlink
                        TextSpan(
                          text: "Clique aqui",
                          style: TextStyle(
                            color: Color.fromRGBO(215, 0, 0, 1),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context)
                                  .popAndPushNamed('/loginRestaurant');
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
