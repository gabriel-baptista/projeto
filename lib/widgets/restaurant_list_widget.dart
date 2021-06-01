// cria uma classe com getters and setters para receber o nome. descrição e o
// horário de funcionamento do restaurante. Depois é enviado para o widget
class RestaurantList {
  String _cnpj;
  String _nomeRestaurante;
  String _enderecoRestaurante;
  String _horarioFuncionamento;
  String _descricaoRestaurante;
  String _celularRestaurante;

  RestaurantList(this._cnpj, this._nomeRestaurante, this._enderecoRestaurante, this._horarioFuncionamento,
  this._descricaoRestaurante, this._celularRestaurante);

  // ignore: unnecessary_getters_setters
  String get nomeRestaurante => _nomeRestaurante;
  // ignore: unnecessary_getters_setters
  set nomeRestaurante(String value) {
    _nomeRestaurante = value;
  }

  // ignore: unnecessary_getters_setters
  String get descricaoRestaurante => _descricaoRestaurante;
  // ignore: unnecessary_getters_setters
  set descricaoRestaurante(String value) {
    _descricaoRestaurante = value;
  }

  // ignore: unnecessary_getters_setters
  String get horarioFuncionamento => _horarioFuncionamento;
  // ignore: unnecessary_getters_setters
  set horarioFuncionamento(String value) {
    _horarioFuncionamento = value;
  }

   // ignore: unnecessary_getters_setters
  String get cnpj => _cnpj;
  // ignore: unnecessary_getters_setters
  set cnpj(String value) {
    _cnpj = value;
  }

   // ignore: unnecessary_getters_setters
  String get enderecoRestaurante => _enderecoRestaurante;
  // ignore: unnecessary_getters_setters
  set enderecoRestaurante(String value) {
    _enderecoRestaurante = value;
  }

   // ignore: unnecessary_getters_setters
  String get celularRestaurante => _celularRestaurante;
  // ignore: unnecessary_getters_setters
  set celularRestaurante(String value) {
    _celularRestaurante = value;
  }
}
