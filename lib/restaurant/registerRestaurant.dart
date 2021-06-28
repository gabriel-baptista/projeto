// tela de registrar restaurantes

import 'package:flutter/material.dart';
import 'package:projeto/models/modelRestaurant.dart';
import 'package:projeto/provider/data_restaurants.dart';
import 'package:provider/provider.dart';

class RegisterRestaurant extends StatefulWidget {
  @override
  _RegisterRestaurantState createState() => _RegisterRestaurantState();
}

class _RegisterRestaurantState extends State<RegisterRestaurant> {
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
