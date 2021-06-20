// força dados do restaurante

import 'package:projeto/models/modelRestaurant.dart';

const DUMMY_RESTAURANTS = {
  "1": const ModelRestaurant(
    cnpj: "1",
    nameRestaurant: "Restaurante do Gabriel",
    descriptionRestaurant: "Esse restaurante serve ao gabrielcentrismo",
    enderecoRestaurant: "Rua onde o restaurante fica",
    cellRestaurant: "(12) 99999-9999",
    passwordRestaurant: "senha",
    imgRestaurant:
        "https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819_960_720.png",
  ),
  "2": const ModelRestaurant(
    cnpj: "2",
    nameRestaurant: "Restaurante do joao",
    descriptionRestaurant: "Este restaurante é vegano",
    enderecoRestaurant: "Rua do joao",
    cellRestaurant: "(12) 12345-6789",
    passwordRestaurant: "senha",
    imgRestaurant:
        "https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819_960_720.png",
  ),
  "3": const ModelRestaurant(
    cnpj: "3",
    nameRestaurant: "Restaurante do Rodrigo",
    descriptionRestaurant: "Este restaurante serve ração do exército",
    enderecoRestaurant: "Rua do digao",
    cellRestaurant: "(12) 54321-9876",
    passwordRestaurant: "senha",
    imgRestaurant:
        "https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819_960_720.png",
  ),
};
