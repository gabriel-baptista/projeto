// essa tela faz cria os cards dos restaurantes

import 'package:flutter/material.dart';
import 'package:projeto/widgets/restaurant_list_widget.dart';
import 'restaurant_list_widget.dart';

class ActivityItem extends StatefulWidget {
  String nome;

  ActivityItem({this.nome});

  @override
  ActivityItemState createState() => ActivityItemState();
}

class ActivityItemState extends State<ActivityItem> {
  // cria um vetor com o que vai ser exibido nos cards
  List<RestaurantList> listaRestaurantes = [
    // chama a classe RestaurantList
    RestaurantList(
      "00000000000001",
      "Bar do Zé",
      "Rua do bar do Zé",
      "08:00 - 20:00",
      "Temos um pouco de tudo",
      "(12) 99899-9090",
    ),

    RestaurantList(
      "00000000000002",
      "Bruno's Butchery",
      "Rua dos goleiros",
      "08:00 - 18:00",
      "Especialista em pequenas fatias",
      "(12) 99899-9090",
    ),

    RestaurantList(
      "00000000000003",
      "Adega da Agata Adaga",
      "Praça",
      "08:00 - 20:00",
      "Vinhos da melhor qualidade",
      "(12) 99899-9090",
    ),

    RestaurantList(
      "00000000000004",
      "Bar do Zé",
      "Rua do bar do Zé",
      "08:00 - 20:00",
      "Temos um pouco de tudo",
      "(12) 99899-9090",
    ),
  ];

  // void addRestaurant() {
  //   setState(() {
  //     listaRestaurantes.insert(
  //       0,
  //       RestaurantList(
  //         "00000000000005",
  //         "teste",
  //         "Rua do bar do Zé",
  //         "08:00 - 20:00",
  //         "Temos um pouco de tudo",
  //         "(12) 99899-9090",
  //       ),
  //     );
  //   });
  // }

  void addRestaurant() {
    setState(() {
      listaRestaurantes.insert(
        0,
        RestaurantList(
          "00000000000005",
          widget.nome,
          "Rua do bar do Zé",
          "08:00 - 20:00",
          "Temos um pouco de tudo",
          "(12) 99899-9090",
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    addRestaurant();
    // constrói o widget dos restaurantes
    return ListView.builder(
      // não deixa o scroll dentro do ListView
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      // contador de itens
      itemCount: listaRestaurantes.length,
      itemBuilder: (context, index) {
        RestaurantList restaurantList = listaRestaurantes[index];

        return Card(
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("/menuFood");
            },
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 40,
                            child: Image.asset(
                              "img/RestaurantLogo.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text.rich(
                                TextSpan(
                                  // vai pegar o nome do restaurante na classe RestaurantList
                                  text: restaurantList.nomeRestaurante,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                // vai pegar a descrição do restaurante na classe RestaurantList
                                restaurantList.descricaoRestaurante,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                // vai pegar o horário de funcionamento do restaurante na classe RestaurantList
                                restaurantList.horarioFuncionamento,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
