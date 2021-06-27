// armazena os dados
// import 'package:flutter/material.dart';

class User {
  final String cpf;
  final String name;
  final String dataNascimento;
  final String endereco;
  final String celular;
  final String senha;
  final String confirmarSenha;
  final String avatarUrl;

  const User({
    this.cpf,
    this.name,
    this.dataNascimento,
    this.endereco,
    this.celular,
    this.senha,
    this.confirmarSenha,
    this.avatarUrl,
  });
}
