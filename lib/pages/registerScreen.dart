import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto/pages/userProfile.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _controllerNomeUsuario = TextEditingController();
  TextEditingController _controllerDataNascimento = TextEditingController();
  TextEditingController _controllerCelularUsuario = TextEditingController();
  TextEditingController _controllerCPF = TextEditingController();
  TextEditingController _controllerEndereco = TextEditingController();
  TextEditingController _controllerImagem = TextEditingController();
  TextEditingController _controllerSenhaUsuario = TextEditingController();
  TextEditingController _controllerConfirmarSenhaUsuario =
      TextEditingController();
  String _textoAviso = "";

  void passarDados() {
    String nome, cpf, endereco, celular, imagem, senha;
    setState(() {
      cpf = _controllerCPF.text;
      nome = _controllerNomeUsuario.text;
      endereco = _controllerEndereco.text;
      celular = _controllerCelularUsuario.text;
      senha = _controllerSenhaUsuario.text;
      imagem = _controllerImagem.text;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UserProfile(
            cpf: cpf,
            nome: nome,
            endereco: endereco,
            celular: celular,
            imagem: imagem,
            senha: senha,
          ),
        ),
      );
    });
  }

  void _verificaCampos() {
    String nome, cpf, endereco, celular, imagem, senha;
    String verificaNomeUsuario = _controllerNomeUsuario.text;
    String verificaDataNascimento = _controllerDataNascimento.text;
    String verificaCelularUsuario = _controllerCelularUsuario.text;
    String verificaCPF = _controllerCPF.text;
    String verificaEdereco = _controllerEndereco.text;
    String verificaSenhaUsuario = _controllerSenhaUsuario.text;
    String verificaConfirmarSenhaUsuario =
        _controllerConfirmarSenhaUsuario.text;

    if ((verificaNomeUsuario == "") ||
        (verificaDataNascimento == "") ||
        (verificaCelularUsuario == "") ||
        (verificaCPF == "") ||
        (verificaEdereco == "") ||
        (verificaSenhaUsuario == "") ||
        (verificaConfirmarSenhaUsuario == "")) {
      setState(() {
        _textoAviso =
            "Pode ser que você esqueceu de preencher algum campo, por favor preencha todos";
      });
    } else if (verificaConfirmarSenhaUsuario != verificaSenhaUsuario) {
      setState(() {
        _textoAviso = "As senhas digitadas não são iguais";
      });
    } else {
      setState(() {
        // _textoAviso = "Cadastro feito com sucesso";
        cpf = _controllerCPF.text;
        nome = _controllerNomeUsuario.text;
        endereco = _controllerEndereco.text;
        celular = _controllerCelularUsuario.text;
        senha = _controllerSenhaUsuario.text;
        imagem = _controllerImagem.text;

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserProfile(
              cpf: cpf,
              nome: nome,
              endereco: endereco,
              celular: celular,
              imagem: imagem,
              senha: senha,
            ),
          ),
        );
      });
    }
  }

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
                      // key: _form,
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
                              controller: _controllerNomeUsuario,
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
                              controller: _controllerCPF,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              keyboardType: TextInputType.datetime,
                              cursorColor: Color.fromRGBO(215, 0, 0, 0.75),
                              maxLength: 8,
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
                              controller: _controllerDataNascimento,
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
                              controller: _controllerEndereco,
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
                              controller: _controllerCelularUsuario,
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
                              controller: _controllerImagem,
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
                              controller: _controllerSenhaUsuario,
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
                              controller: _controllerConfirmarSenhaUsuario,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // icone do campo nome
                    /*Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Icon(
                              Icons.account_circle_outlined,
                              size: 40,
                              semanticLabel: "Área para digitar o nome",
                            ),
                          ),
                          // campo nome
                          Flexible(
                            child: Container(
                              child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Nome",
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
                                controller: _controllerNomeUsuario,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          // campo sobrenome
                          Flexible(
                            child: Container(
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  // hintText: "Sobrenome",
                                  labelText: "Sobrenome",
                                  // hintStyle: TextStyle(
                                  //   color: Colors.grey.shade600,
                                  // ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(215, 0, 0, 0.75),
                                    ),
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                                // pega o que o usuário digitou no campo sobrenome
                                controller: _controllerSobrenomeUsuario,
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
                                hintText: "Rua, Bairro - Número Casa",
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
                              controller: _controllerEndereco,
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
                              controller: _controllerCidade,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      // campo data de nascimento
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                            child: Icon(
                              Icons.calendar_today_outlined,
                              size: 40,
                            ),
                          ),
                          Flexible(
                            child: TextField(
                              keyboardType: TextInputType.datetime,
                              maxLength: 10,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              decoration: InputDecoration(
                                hintText: "Data de Nascimento xx/xx/xx",
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
                              controller: _controllerDataNascimento,
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
                              controller: _controllerCelularUsuario,
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
                              maxLength: 11,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              decoration: InputDecoration(
                                hintText: "CPF",
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
                              controller: _controllerCPF,
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
                              controller: _controllerSenhaUsuario,
                            ),
                          ),
                        ],
                      ),*/
                    // caso aconteça algum erro, o app irá mostrar esse padding com um aviso ao usuário
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 30),
                      child: Text(
                        _textoAviso,
                        style: TextStyle(
                            fontSize: 13,
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
    );
  }
}
