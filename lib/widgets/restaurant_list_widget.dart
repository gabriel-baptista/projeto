// cria uma classe com getters and setters para receber o nome. descrição e o
// horário de funcionamento do restaurante. Depois é enviado para o widget
class RestaurantList {
  String _nomeRestaurante;
  String _descricaoRestaurante;
  String _horarioFuncionamento;

  RestaurantList(this._nomeRestaurante, this._descricaoRestaurante,
      this._horarioFuncionamento);

  // ignore: unnecessary_getters_setters
  String get nomeRestaurante => _nomeRestaurante;

  // ignore: unnecessary_getters_setters
  set nomeRestaurante(String value) {
    _nomeRestaurante = value;
  }

  // ignore: unnecessary_getters_setters
  String get descricaoRestaurante => _descricaoRestaurante;

  // ignore: unnecessary_getters_setters
  String get horarioFuncionamento => _horarioFuncionamento;

  // ignore: unnecessary_getters_setters
  set descricaoRestaurante(String value) {
    _descricaoRestaurante = value;
  }

  // ignore: unnecessary_getters_setters
  set horarioFuncionamento(String value) {
    _descricaoRestaurante = value;
  }
}
