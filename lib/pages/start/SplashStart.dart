import 'dart:async';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:savingstreet/pages/login/Welcome.dart';

class SplashStart extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _SplashStartState();
}

class _SplashStartState extends State<SplashStart> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
            () { Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: const Duration(seconds: 2), child: const Welcome())); }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7681B9),
      body: Column(
        children: [
          const Expanded(
            child: SizedBox(
              height: 1,
              width: 1,
            ),
          ),
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    color: const Color(0xFF1F1A7A),
                    height: MediaQuery.of(context).size.height/1.75,
                    width: MediaQuery.of(context).size.width/4,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    color: const Color(0xFF1F1A7A),
                    height: MediaQuery.of(context).size.height/1.15,
                    width: MediaQuery.of(context).size.width/4,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    color: const Color(0xFF1F1A7A),
                    height: MediaQuery.of(context).size.height/1.35,
                    width: MediaQuery.of(context).size.width/4,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    color: const Color(0xFF1F1A7A),
                    height: MediaQuery.of(context).size.height/1.55,
                    width: MediaQuery.of(context).size.width/4,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/2.7, left: 20, right: 20),
                child: Image.asset("lib/assets/images/logo.png"),
              ),
            ],
          ),
        ],
      )
    );
  }
}