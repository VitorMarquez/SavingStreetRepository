import 'package:flutter/material.dart';
import 'package:savingstreet/pages/home/ReplacementScreen.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            alignment: Alignment.topRight,
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const ReplacementScreen()), (Route<dynamic> route) => false);
                },
                child: const Text(
                  "Pular",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: Color(0xFF1F1A7A)
                  ),
                )
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0xFF1F1A7A)
        ),
        child: Column(
          children: [
            Container(
              width: 280,
              alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Image.asset("lib/assets/images/logoText.png")
            ),
            Container(
              alignment: Alignment.topCenter,
              child: const Text(
                "Uma iniciativa por uma sociedade melhor",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 10,
                  color: Colors.black
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.all(20),
              child: const Text(
                "Voltado para instituições sociais, organizações governamentais e municipais, o Saving Street é um aplicativo que foi criado no intuito de facilitar, otimizar e automatizar o cadastramento de pessoas em situação de rua, buscando coletar, armazenar e tratar dados de maneira mais precisa, diferentemente da maneira em que ocorre hoje, onde o morador possamos contribuir para a formação e desenvolvimento de novas políticas públicas de âmbito social para as pessoas mais carentes da sociedade.",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                    color: Color(0xFF7681B9)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
