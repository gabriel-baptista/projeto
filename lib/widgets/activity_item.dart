import 'package:flutter/material.dart';
import 'package:projeto/widgets/restaurant_list_widget.dart';
import 'restaurant_list_widget.dart';

class ActivityItem extends StatefulWidget {
  @override
  _ActivityItemState createState() => _ActivityItemState();
}

class _ActivityItemState extends State<ActivityItem> {
  // cria um vetor com o que vai ser exibido nos cards
  List<RestaurantList> listaRestaurantes = [
    // chama a classe RestaurantList
    RestaurantList(
      "Pizzaria do Seu Zé",
      "Especializado em pizzas do Seu Zé",
      "18:30 - 00:00",
    ),
    RestaurantList(
      "McDonald's",
      "Dê-me o seu rim e lhe daremos um lanche ruim ;)",
      "18:30 - 00:00",
    ),
    RestaurantList(
      "Tio da esquina",
      "Especializado churrasco de gato",
      "18:30 - 00:00",
    ),
    RestaurantList(
      "Lanchão muito louco",
      "Especializado lanches diferenciados",
      "18:30 - 00:00",
    ),
    RestaurantList(
      "Renato's Lanches",
      "Venha comer o Renatão de 4",
      "18:30 - 00:00",
    ),
  ];

  void addRestaurant() {
    setState(() {
      listaRestaurantes.insert(
          0, RestaurantList("gabriel", "baptista", "oliveira"));
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
