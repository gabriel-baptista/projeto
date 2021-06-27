// crud
// Users  = DataRestaurants

import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:projeto/data/dummy_food.dart';
// import 'package:projeto/data/dummy_users.dart';
import 'package:projeto/models/user.dart';

class Users with ChangeNotifier {
  final Map<String, User> _itens = {};
  // esse metodo pega o conteudo dos itens
  List<User> get all {
    return [..._itens.values];
  }

  //  esse metodo conta quantos itens tem
  int get count {
    return _itens.length;
  }

  // acessa o item de acordo com o index (contador)
  User byIndex(int i) {
    return _itens.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) {
      return;
    }

    // alterar
    if (_itens != null &&
        user.cpf.trim().isNotEmpty &&
        _itens.containsKey(user.cpf)) {
      _itens.update(
        user.cpf,
        (value) => User(
          cpf: user.cpf,
          name: user.name,
          dataNascimento: user.dataNascimento,
          endereco: user.endereco,
          celular: user.celular,
          senha: user.senha,
          confirmarSenha: user.confirmarSenha,
          avatarUrl: user.avatarUrl,
        ),
      );
    }
    // adicionar
    else {
      final id = Random().nextInt(9999).toString();
      _itens.putIfAbsent(
        id,
        () => User(
          cpf: user.cpf,
          name: user.name,
          dataNascimento: user.dataNascimento,
          endereco: user.endereco,
          celular: user.celular,
          senha: user.senha,
          confirmarSenha: user.confirmarSenha,
          avatarUrl: user.avatarUrl,
        ),
      );
    }
    notifyListeners();
  }

  void remove(User user) {
    if (user != null && user.cpf != null) {
      _itens.remove(user.cpf);
      notifyListeners();
    }
  }
}
