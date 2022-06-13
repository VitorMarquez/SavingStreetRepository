import 'package:flutter/material.dart';
import 'package:savingstreet/models/SocialNetworkModel.dart';
import 'package:savingstreet/pages/login/FirstAccess.dart';
import 'package:savingstreet/pages/start/Info.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  List<SocialNetworkModel> social = [
    SocialNetworkModel("lib/assets/images/gloogle.png"),
    SocialNetworkModel("lib/assets/images/facebook.png"),
    SocialNetworkModel("lib/assets/images/twitter.png"),
    SocialNetworkModel("lib/assets/images/instagram.png"),
  ];
  
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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: const Text(
                      "Ajude a trazer mais visibilidade para pessoas necessitadas e contribua conosco para uma sociedade mais consiente.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        color: Color(0xFF1F1A7A)
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
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
                        "Entrar",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 15
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const Info()), (Route<dynamic> route) => false);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
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
                        "Criar uma conta",
                        style: TextStyle(
                            color: Color(0xFF1F1A7A),
                            fontFamily: "Poppins",
                            fontSize: 15
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const FirstAccess()), (Route<dynamic> route) => false);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "ou continuar com rede social",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 13,
                      color: Color(0xFF1F1A7A)
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: social.length,
                      itemBuilder: (context, index){
                        SocialNetworkModel sociall = social[index];
                        return Center(
                          child: _socialNetwork(image: sociall.image)
                        );
                      }, separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          )
        ],
      )
    );
  }
  Widget _socialNetwork({
  required String image}) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(118, 129, 185, 200),
        borderRadius: BorderRadius.circular(30),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Container(
            padding: const EdgeInsets.all(7),
            child: Image.asset(image)
        )
      )
    );
  }
}






