import 'package:flutter/material.dart';
import 'package:savingstreet/pages/login/Welcome.dart';

class Default extends StatelessWidget {
  const Default({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            title: Container(
              margin: const EdgeInsets.only(right: 40),
              alignment: Alignment.center,
              child: const Text(
                "Dados Pessoais",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 18
                ),
              ),
            ),
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_outlined),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const Welcome()), (Route<dynamic> route) => false);
              },),
            automaticallyImplyLeading: true,
            backgroundColor: const Color(0xFF1F1A7A),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(40)
                )
            ),
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: const Text("Não implementado"),
        ),
    );
  }
}
