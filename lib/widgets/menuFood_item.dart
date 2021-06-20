import 'package:flutter/material.dart';
import 'food_list_widget.dart';

class MenuFoodItem extends StatefulWidget {
  @override
  _MenuFoodItemState createState() => _MenuFoodItemState();
}

class _MenuFoodItemState extends State<MenuFoodItem> {
  // cria um vetor com o que vai ser exibido nos cards
  List<FoodList> listaComida = [
    // chama a classe FoodList
    FoodList(
      "Renatão",
      "Venha comer o Renatão de 4",
      "R\$ 50,00",
      "img/renatao.jpg",
    ),
    FoodList(
      "MC Lanche Feliz",
      "preço de um rim",
      "R\$ 15.000,00",
      "img/mclanche-feliz.jpg",
    ),
    FoodList(
      "BIG LANCHÃO",
      "Mata fome e você de colesterol",
      "R\$ 75,00",
      "img/lanchaoGG.jpg",
    ),
    FoodList(
      "Lanxinha",
      "Lanche de coxinha",
      "R\$ 15,00",
      "img/lanxinha.jpg",
    ),
    FoodList(
      "Coca-Cola",
      "Uma coquinha é sempre bom né",
      "R\$ 10,00",
      "img/coquinha.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // constrói o widget dos restaurantes
    return ListView.builder(
      // não deixa o scroll dentro do ListView
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      // contador de itens
      itemCount: listaComida.length,
      itemBuilder: (context, index) {
        FoodList foodList = listaComida[index];

        return Card(
          child: InkWell(
            onTap: () {},
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
                              foodList.caminhoComida,
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
                          Wrap(
                            children: [
                              Row(
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      // vai pegar o nome do restaurante na classe FoodList
                                      text: foodList.nomeComida,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                // vai pegar a descrição do restaurante na classe FoodList
                                foodList.descricaoComida,
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
                                // vai pegar o horário de funcionamento do restaurante na classe FoodList
                                foodList.precoComida,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(0, 215, 0, 0.75),
                                  fontWeight: FontWeight.bold,
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
