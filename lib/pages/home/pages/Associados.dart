import 'package:flutter/material.dart';

class Associados extends StatefulWidget {
  const Associados({Key? key}) : super(key: key);

  @override
  State<Associados> createState() => _AssociadosState();
}

class _AssociadosState extends State<Associados> {
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
                "Saving Street",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    color: Color(0xFF1F1A7A)
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 5),
              child: const Text(
                "associados",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
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
      ),
    );
  }
}
