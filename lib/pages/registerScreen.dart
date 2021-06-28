// tela de Registrar cliente

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto/models/user.dart';
import 'package:projeto/provider/users.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};
  String confirmarSenha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color.fromRGBO(215, 0, 0, 1),
        ),
        title: Text(
          "Registrar",
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
              height: MediaQuery.of(context).size.height * 1,
              color: Color.fromRGBO(255, 255, 255, 1),
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(25, 5, 25, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Form(
                      key: _form,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              cursorColor: Color.fromRGBO(215, 0, 0, 0.75),
                              decoration: InputDecoration(
                                labelText: 'Nome Completo',
                                focusColor: Color.fromRGBO(215, 0, 0, 0.75),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(215, 0, 0, 0.75),
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value == null ||
                                    value == '' ||
                                    value.trim().isEmpty) {
                                  return 'Por favor, insira um nome';
                                }
                                return null;
                              },
                              onSaved: (value) => _formData['nome'] = value,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              cursorColor: Color.fromRGBO(215, 0, 0, 0.75),
                              maxLength: 11,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              decoration: InputDecoration(
                                labelText: 'CPF',
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(215, 0, 0, 0.75),
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value == null ||
                                    value == '' ||
                                    value.trim().isEmpty) {
                                  return 'Por favor, insira um cpf';
                                }
                                return null;
                              },
                              onSaved: (value) => _formData['cpf'] = value,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              cursorColor: Color.fromRGBO(215, 0, 0, 0.75),
                              maxLength: 10,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              decoration: InputDecoration(
                                labelText: 'Data de Nascimento',
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(215, 0, 0, 0.75),
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value == null ||
                                    value == '' ||
                                    value.trim().isEmpty) {
                                  return 'Por favor, insira a data de nascimento';
                                }
                                return null;
                              },
                              onSaved: (value) =>
                                  _formData['dataNascimento'] = value,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              keyboardType: TextInputType.streetAddress,
                              cursorColor: Color.fromRGBO(215, 0, 0, 0.75),
                              decoration: InputDecoration(
                                labelText: 'Endereço',
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(215, 0, 0, 0.75),
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value == null ||
                                    value == '' ||
                                    value.trim().isEmpty) {
                                  return 'Por favor, insira um endereço';
                                }
                                return null;
                              },
                              onSaved: (value) => _formData['endereco'] = value,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              cursorColor: Color.fromRGBO(215, 0, 0, 0.75),
                              maxLength: 11,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              decoration: InputDecoration(
                                labelText: 'Celular',
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(215, 0, 0, 0.75),
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value == null ||
                                    value == '' ||
                                    value.trim().isEmpty) {
                                  return 'Por favor, insira um número de celular';
                                }
                                return null;
                              },
                              onSaved: (value) => _formData['celular'] = value,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              keyboardType: TextInputType.streetAddress,
                              cursorColor: Color.fromRGBO(215, 0, 0, 0.75),
                              decoration: InputDecoration(
                                labelText: 'Imagem',
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(215, 0, 0, 0.75),
                                  ),
                                ),
                              ),
                              onSaved: (value) => _formData['img'] = value,
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
                              validator: (value) {
                                if (value == null ||
                                    value == '' ||
                                    value.trim().isEmpty) {
                                  return 'Por favor, insira uma senha';
                                }
                                confirmarSenha = value;
                                return null;
                              },
                              onSaved: (value) => _formData['senha'] = value,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              cursorColor: Color.fromRGBO(215, 0, 0, 0.75),
                              decoration: InputDecoration(
                                labelText: 'Confirmar Senha',
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(215, 0, 0, 0.75),
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value != confirmarSenha) {
                                  return 'As senhas não são iguais';
                                }
                                if (value == null ||
                                    value == '' ||
                                    value.trim().isEmpty) {
                                  return 'Por favor, confirme a sua senha';
                                }

                                return null;
                              },
                              onSaved: (value) =>
                                  _formData['confirmarSenha'] = value,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // caso aconteça algum erro, o app irá mostrar esse padding com um aviso ao usuário
                    // Padding(
                    //   padding: EdgeInsets.fromLTRB(0, 5, 0, 30),
                    //   child: Text(
                    //     _textoAviso,
                    //     style: TextStyle(
                    //         fontSize: 13,
                    //         fontWeight: FontWeight.bold,
                    //         color: Color.fromRGBO(215, 0, 0, 0.75)),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 0,
                    // ),
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
                        onPressed: () {
                          final isValid = _form.currentState.validate();
                          if (isValid) {
                            _form.currentState.save();
                            Provider.of<Users>(context, listen: false).put(
                              User(
                                cpf: _formData['cpf'],
                                name: _formData['nome'],
                                dataNascimento: _formData['dataNascimento'],
                                endereco: _formData['endereco'],
                                celular: _formData['celular'],
                                senha: _formData['senha'],
                                confirmarSenha: _formData['confirmarSenha'],
                                avatarUrl: _formData['img'],
                              ),
                            );
                            Navigator.of(context).popAndPushNamed('/home');
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
