import 'package:flutter/material.dart';
import 'package:savingstreet/models/CityModel.dart';

class Cidade extends StatefulWidget {
  const Cidade({Key? key}) : super(key: key);

  @override
  State<Cidade> createState() => _CidadeState();
}

class _CidadeState extends State<Cidade> {
  String dropdownValue = 'Tupã';
  
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
                    child: Container(
                      width: 100,
                      height: 32,
                      color: const Color.fromRGBO(31,26,122, 200),
                      margin: const EdgeInsets.only(left: 20, top: 35),
                      alignment: Alignment.center,
                      child: DropdownButton(
                        menuMaxHeight: 60,
                        dropdownColor: const Color(0xFF1F1A7A),
                        value: City.city,
                        elevation: 0,
                        underline: Container(
                          height: 32,
                        ),
                        icon: const Icon(Icons.arrow_drop_down_outlined, color: Color(0xFF1F1A7A),),
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 18,
                          color: Color(0xFF7681B9)
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            City.city = newValue!;
                          });
                        },
                        items: <String>['Tupã', 'Bauru', 'Assis', 'Marília']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text(value)
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

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
