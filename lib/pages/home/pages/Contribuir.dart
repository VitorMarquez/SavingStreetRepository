import 'package:flutter/material.dart';
import 'package:savingstreet/models/CityModel.dart';

class Contribuir extends StatefulWidget {

  @override
  State<Contribuir> createState() => _ContribuirState();
}

class _ContribuirState extends State<Contribuir> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          title: Container(
            alignment: Alignment.center,
            child: Text(
              City.city,
              style: const TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 18
              ),
            ),
          ),
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF1F1A7A),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(40)
              )
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                              "Doar mantimentos",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.black
                            ),
                          ),
                        ),
                        const Expanded(
                          child: SizedBox(
                            width: 1,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios_outlined, color: Color(0xFF1F1A7A),),
                          ),
                        )
                      ],
                    )
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 2,
                    color: const Color(0xFF1F1A7A),
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              "Doar dinheiro",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 20,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(
                              width: 1,
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward_ios_outlined, color: Color(0xFF1F1A7A),),
                            ),
                          )
                        ],
                      )
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 2,
                    color: const Color(0xFF1F1A7A),
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              "Cadastrar",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 20,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(
                              width: 1,
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.lock, color: Color(0xFF1F1A7A),),
                            ),
                          )
                        ],
                      )
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 2,
                    color: const Color(0xFF1F1A7A),
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              "Atualizar cadastro",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 20,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(
                              width: 1,
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.lock, color: Color(0xFF1F1A7A),),
                            ),
                          )
                        ],
                      )
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 2,
                    color: const Color(0xFF1F1A7A),
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              "Entrar em contato",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 20,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(
                              width: 1,
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward_ios_outlined, color: Color(0xFF1F1A7A),),
                            ),
                          ),
                        ],
                      )
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 2,
                    color: const Color(0xFF1F1A7A),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 100),
                    alignment: Alignment.center,
                    child: const Text(
                      "Novas funções em breve...",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20,
                          color: Color(0xFF1F1A7A)
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: 2,
            color: const Color(0xFF1F1A7A),
          )
        ],
      ),
    );
  }
}
