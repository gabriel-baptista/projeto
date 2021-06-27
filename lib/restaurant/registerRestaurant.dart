// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import 'package:projeto/models/modelRestaurant.dart';
import 'package:projeto/provider/data_restaurants.dart';
// import 'package:projeto/restaurant/profileRestaurant.dart';
import 'package:provider/provider.dart';

class RegisterRestaurant extends StatefulWidget {
  @override
  _RegisterRestaurantState createState() => _RegisterRestaurantState();
}

class _RegisterRestaurantState extends State<RegisterRestaurant> {
  // void passarDados() {
  //   String nome, cnpj, descricao, endereco, celular, imagem, senha;
  //   setState(() {
  //     cnpj = _formData['CNPJ'];
  //     nome = _formData['nameRestaurant'];
  //     descricao = _formData['descriptionRestaurant'];
  //     endereco = _formData['enderecoRestaurant'];
  //     celular = _formData['cellRestaurant'];
  //     senha = _formData['passwordRestaurant'];
  //     imagem = _formData['imgRestaurant'];

  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => ProfileRestaurant(
  //           cnpj: cnpj,
  //           nome: nome,
  //           descricao: descricao,
  //           endereco: endereco,
  //           celular: celular,
  //           imagem: imagem,
  //           senha: senha,
  //         ),
  //       ),
  //     );
  //   });
  // }

  // TextEditingController _controllerNomeRestaurant = TextEditingController();
  // TextEditingController _controllerCelularRestaurant = TextEditingController();
  // TextEditingController _controllerCNPJ = TextEditingController();
  // TextEditingController _controllerSenhaRestaurant = TextEditingController();
  // TextEditingController _controllerEnderecoRestaurant = TextEditingController();
  // TextEditingController _controllerDescricaoRestaurant =
  //     TextEditingController();
  // String _textoAviso = "";

  // passando os dados do restaurante cadastrado para a home
  // void sendData() {
  //   String nome;
  //   nome = _controllerNomeRestaurant.text;
  //   ActivityItem(nome: nome);

  //   Navigator.of(context).pushNamed("/home");

  // setState(() {
  //   nome = _controllerNomeRestaurant.text;

  //   Navigator.push(context,
  //       MaterialPageRoute(builder: (context) => ActivityItem(nome: nome)));
  // });
  // }

  // void _verificaCampos() {
  //   String nome = _controllerNomeRestaurant.text;
  //   String celular = _controllerCelularRestaurant.text;
  //   String cnpj = _controllerCNPJ.text;
  //   String senha = _controllerSenhaRestaurant.text;
  //   String endereco = _controllerEnderecoRestaurant.text;
  //   String descricao = _controllerDescricaoRestaurant.text;

  //   if ((nome == "") ||
  //       (celular == "") ||
  //       (cnpj == "") ||
  //       (senha == "") ||
  //       (endereco == "") ||
  //       (descricao == "")) {
  //     setState(() {
  //       _textoAviso =
  //           "Pode ser que você esqueceu de preencher algum campo, por favor preencha todos";
  //     });
  //   } else {
  //     setState(() {
  //       _textoAviso = "Cadastro do restaurante feito com sucesso";
  //     });
  //   }
  // }

  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  void _loadFormData(ModelRestaurant restaurant) {
    if (restaurant != null) {
      _formData['cnpj'] = restaurant.cnpj;
      _formData['nameRestaurant'] = restaurant.nameRestaurant;
      _formData['descriptionRestaurant'] = restaurant.descriptionRestaurant;
      _formData['enderecoRestaurant'] = restaurant.enderecoRestaurant;
      _formData['cellRestaurant'] = restaurant.cellRestaurant;
      _formData['passwordRestaurant'] = restaurant.passwordRestaurant;
      _formData['imgRestaurant'] = restaurant.imgRestaurant;
    }
  }

  @override
  Widget build(BuildContext context) {
    final ModelRestaurant restaurant =
        ModalRoute.of(context).settings.arguments;
    _loadFormData(restaurant);

    // ActivityItemState actItem = new ActivityItemState();
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
                height: MediaQuery.of(context).size.height * 0.89,
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
                              padding: const EdgeInsets.only(bottom: 0),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                cursorColor: Color.fromRGBO(215, 0, 0, 0.75),
                                decoration: InputDecoration(
                                  labelText: 'CNPJ',
                                  focusColor: Color.fromRGBO(215, 0, 0, 0.75),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(215, 0, 0, 0.75),
                                    ),
                                  ),
                                ),
                                maxLength: 14,
                                buildCounter: (_,
                                        {currentLength,
                                        maxLength,
                                        isFocused}) =>
                                    Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Container(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      currentLength.toString() +
                                          "/" +
                                          maxLength.toString(),
                                    ),
                                  ),
                                ),
                                onSaved: (value) => _formData['CNPJ'] = value,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                cursorColor: Color.fromRGBO(215, 0, 0, 0.75),
                                decoration: InputDecoration(
                                  labelText: 'Nome do Restaurante',
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(215, 0, 0, 0.75),
                                    ),
                                  ),
                                ),
                                onSaved: (value) =>
                                    _formData['nameRestaurant'] = value,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                cursorColor: Color.fromRGBO(215, 0, 0, 0.75),
                                decoration: InputDecoration(
                                  labelText: 'Descrição',
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(215, 0, 0, 0.75),
                                    ),
                                  ),
                                ),
                                maxLines: 2,
                                onSaved: (value) =>
                                    _formData['descriptionRestaurant'] = value,
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
                                onSaved: (value) =>
                                    _formData['enderecoRestaurant'] = value,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 0),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                cursorColor: Color.fromRGBO(215, 0, 0, 0.75),
                                decoration: InputDecoration(
                                  labelText: 'Celular',
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(215, 0, 0, 0.75),
                                    ),
                                  ),
                                ),
                                maxLength: 11,
                                buildCounter: (_,
                                        {currentLength,
                                        maxLength,
                                        isFocused}) =>
                                    Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Container(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      currentLength.toString() +
                                          "/" +
                                          maxLength.toString(),
                                    ),
                                  ),
                                ),
                                onSaved: (value) =>
                                    _formData['cellRestaurant'] = value,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                cursorColor: Color.fromRGBO(215, 0, 0, 0.75),
                                decoration: InputDecoration(
                                  labelText: 'Imagem',
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(215, 0, 0, 0.75),
                                    ),
                                  ),
                                ),
                                onSaved: (value) =>
                                    _formData['imgRestaurant'] = value,
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
                                onSaved: (value) =>
                                    _formData['passwordRestaurant'] = value,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // formulario de cadatros de restaurante antigo
                      /*// icone do campo nome
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
                      ),*/
                      SizedBox(
                        height: 65,
                      ),
                      // botao de cadastro
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
                              borderRadius: BorderRadius.circular(38),
                            ),
                          ),
                          // faz uma ação se o botão for pressionado
                          // onPressed: actItem.addRestaurant,
                          onPressed: () {
                            final isValid = _form.currentState.validate();
                            if (isValid) {
                              _form.currentState.save();

                              Provider.of<DataRestaurants>(context,
                                      listen: false)
                                  .put(
                                ModelRestaurant(
                                  cnpj: _formData['CNPJ'],
                                  nameRestaurant: _formData['nameRestaurant'],
                                  descriptionRestaurant:
                                      _formData['descriptionRestaurant'],
                                  enderecoRestaurant:
                                      _formData['enderecoRestaurant'],
                                  cellRestaurant: _formData['cellRestaurant'],
                                  passwordRestaurant:
                                      _formData['passwordRestaurant'],
                                  imgRestaurant: _formData['imgRestaurant'],
                                ),
                              );
                              // passarDados();
                              Navigator.of(context)
                                  .pushNamed('/homeRestaurant');
                            }
                          },
                        ),
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
