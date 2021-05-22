// cria uma classe com getters and setters para receber o nome. descrição e o
// horário de funcionamento do restaurante. Depois é enviado para o widget
class FoodList {
  String _nomeComida;
  String _descricaoComida;
  String _precoComida;
  String _caminhoComida;

  FoodList(this._nomeComida, this._descricaoComida, this._precoComida,
      this._caminhoComida);

  // ignore: unnecessary_getters_setters
  String get nomeComida => _nomeComida;

  // ignore: unnecessary_getters_setters
  set nomeComida(String value) {
    _nomeComida = value;
  }

  // ignore: unnecessary_getters_setters
  String get descricaoComida => _descricaoComida;

  // ignore: unnecessary_getters_setters
  String get precoComida => _precoComida;

  // ignore: unnecessary_getters_setters
  String get caminhoComida => _caminhoComida;

  // ignore: unnecessary_getters_setters
  set descricaoComida(String value) {
    _descricaoComida = value;
  }

  // ignore: unnecessary_getters_setters
  set precoComida(String value) {
    _precoComida = value;
  }

  // ignore: unnecessary_getters_setters
  set caminhoComida(String value) {
    _caminhoComida = value;
  }
}
