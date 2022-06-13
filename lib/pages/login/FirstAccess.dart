import 'package:flutter/material.dart';
import 'package:savingstreet/pages/login/Default.dart';

class FirstAccess extends StatefulWidget {
  const FirstAccess({Key? key}) : super(key: key);

  @override
  State<FirstAccess> createState() => _FirstAccessState();
}

class _FirstAccessState extends State<FirstAccess> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height/3),
        child: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF1F1A7A),
          automaticallyImplyLeading: false,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(40)
            )
          ),
          flexibleSpace: Container(
            width: MediaQuery.of(context).size.width/5.5,
            height: MediaQuery.of(context).size.height/5.5,
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/11),
            child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Image.asset("lib/assets/images/logoText.png")
            )
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Quem são os contribuidores?",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1F1A7A)
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "ONGS e Instituições que ajudam a cadastrar os moradores de rua trazendo visibilidade para suas necessidades. A partir da sua localização e história podemos ter idéia de como ajudar fornecendo o que ele mais necessita.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            color: Color(0xFF1F1A7A)
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "O que posso fazer como usuário?",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1F1A7A)
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Usuários podem contribuir diretamente com as ONGS e Instituições doando mantimentos ou dinheiro. Com nosso APP fica fácil para todos cidadões terem informações e compreenderem as dores dos moradores de rua.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            color: Color(0xFF1F1A7A)
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF1F1A7A)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            )
                        ),
                        child: const Text(
                          "Quero ser um contribuidor",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 15
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const Default()), (Route<dynamic> route) => false);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color(0xFF1F1A7A),
                            width: 2,
                            style: BorderStyle.solid
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(
                        child: const Text(
                          "Quero ser um usuário",
                          style: TextStyle(
                              color: Color(0xFF1F1A7A),
                              fontFamily: "Poppins",
                              fontSize: 15
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const Default()), (Route<dynamic> route) => false);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              )
            )
          ],
        ),
      )
    );
  }
}






