import 'package:flutter/material.dart';
import '../../../models/CityModel.dart';

class Cadastros extends StatefulWidget {
  const Cadastros({Key? key}) : super(key: key);

  @override
  State<Cadastros> createState() => _CadastrosState();
}

class _CadastrosState extends State<Cadastros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, left: 20),
              child: const Text(
                "Cadastros de",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 5),
              child: Text(
                City.city,
                style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    color: Color(0xFF1F1A7A)
                ),
              ),
            ),
          ],
        ),
        actions: [
          Container(
              margin: const EdgeInsets.only(top: 7, right: 20),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Visão detalhada",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 10,
                      color: Colors.grey
                  ),
                ),
              )
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [

                  ],
                )
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 2,
              color: const Color(0xFF1F1A7A),
            )
          ],
        ),
      ),
    );
  }
}
