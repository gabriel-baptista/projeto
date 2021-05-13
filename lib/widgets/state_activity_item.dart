import 'package:flutter/material.dart';

class StateActivityItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                              // text: 'Bar do seu Zé',
                              text: "Pizzaria do seu Zé",
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
                            '1 Pizza + 1 Coca-Cola 2L',
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
                            '11/05/2021',
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
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "R\$ 35,00",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 215, 0, 0.75),
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "|",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 215, 0, 0.75),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.visibility_off_rounded,
                    color: Colors.grey.shade500,
                  ),
                  // esse icone aparece se o state que o restaurante mandar for == visualizado
                  // Icon(
                  //   Icons.visibility_rounded,
                  //   color: Color.fromRGBO(215, 0, 0, 1),
                  // ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '- - - - -',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  Icon(
                    Icons.access_time,
                    color: Colors.grey.shade500,
                  ),
                  // esse icone aparece se o state que o restaurante mandar for == preparando
                  // Icon(
                  //   Icons.access_time_rounded,
                  //   color: Color.fromRGBO(230, 210, 0, 1),
                  // ),
                  Text(
                    '- - - - -',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.check_circle_outline_rounded,
                    color: Colors.grey.shade500,
                  ),
                  // esse icone vai aparecer quando o state que o restaurante mudar for == encaminhado
                  // Icon(
                  //   Icons.check_circle_rounded,
                  //   color: Color.fromRGBO(0, 200, 0, 1),
                  // )
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 40,
                        child: Image.asset(
                          "img/lanche.jpg",
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
                              // text: 'Bar do seu Zé',
                              text: "Hambúrguer",
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
                            'Hamburgueria do seu Zé',
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
                            '11/05/2021',
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
 */
