// formulario para criar usuarios
// ja foi

import 'package:flutter/material.dart';
import 'package:projeto/models/modelMenu.dart';
import 'package:projeto/provider/data_menu.dart';
import 'package:provider/provider.dart';

class FoodForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  void _loadFormData(ModelMenu modelMenu) {
    if (modelMenu != null) {
      _formData['id'] = modelMenu.id;
      _formData['name'] = modelMenu.nameFood;
      _formData['description'] = modelMenu.descriptionFood;
      _formData['price'] = modelMenu.priceFood;
      _formData['img'] = modelMenu.imgFood;
    }
  }

  @override
  Widget build(BuildContext context) {
    final ModelMenu modelMenu = ModalRoute.of(context).settings.arguments;
    _loadFormData(modelMenu);

    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Prato'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.save,
            ),
            onPressed: () {
              final isValid = _form.currentState.validate();
              if (isValid) {
                _form.currentState.save();

                Provider.of<DataMenu>(context, listen: false).put(
                  ModelMenu(
                    id: _formData['id'],
                    nameFood: _formData['name'],
                    descriptionFood: _formData['description'],
                    priceFood: _formData['price'],
                    imgFood: _formData['img'],
                  ),
                );
                Navigator.of(context).pop();
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _form,
          child: Column(
            children: <Widget>[
              TextFormField(
                initialValue: _formData['id'],
                decoration: InputDecoration(
                  labelText: 'Id',
                ),
                onSaved: (value) => _formData['id'] = value,
              ),
              TextFormField(
                initialValue: _formData['name'],
                decoration: InputDecoration(labelText: 'Nome'),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Você deve informar o nome do prato!";
                  }
                  if (value.trim().length <= 3) {
                    return "Nome muito pequeno. No minimo 3 letras";
                  }

                  return null;
                },
                onSaved: (value) => _formData['name'] = value,
              ),
              TextFormField(
                initialValue: _formData['description'],
                decoration: InputDecoration(
                  labelText: 'Descrição do prato',
                ),
                onSaved: (value) => _formData['description'] = value,
              ),
              TextFormField(
                initialValue: _formData['price'],
                decoration: InputDecoration(
                  labelText: 'Preço',
                  helperText: "Use ponto ao invés de vírgula",
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Por favor, digite um valor";
                  }
                  if (value.trim().length < 5) {
                    return "Por favor insira um valor parecido com \"15.55\"";
                  }

                  return null;
                },
                onSaved: (value) => _formData['price'] = value,
              ),
              TextFormField(
                initialValue: _formData['img'],
                decoration: InputDecoration(
                  labelText: 'Imagem do prato',
                ),
                onSaved: (value) => _formData['img'] = value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
