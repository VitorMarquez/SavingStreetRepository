import 'package:flutter/material.dart';
import 'package:savingstreet/pages/home/pages/Associados.dart';
import 'package:savingstreet/pages/home/pages/Cadastros.dart';
import 'package:savingstreet/pages/home/pages/Cidade.dart';
import 'package:savingstreet/pages/home/pages/Contribuir.dart';

class ReplacementScreen extends StatefulWidget {
  const ReplacementScreen({Key? key}) : super(key: key);

  @override
  State<ReplacementScreen> createState() => _ReplacementScreenState();
}

class _ReplacementScreenState extends State<ReplacementScreen> {
  final _pages = [const Cidade(), const Cadastros(), const Associados(), Contribuir()];
  final _pageController = PageController();
  int _selectedIndex = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_sharp),
            label: 'Cidade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.switch_account),
            label: 'Cadastros',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            label: 'Associados',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Contribuir',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF1F1A7A),
        unselectedItemColor: const Color(0xFFD6D6D6),
        onTap: (index){
          setState(() {
            _selectedIndex = index;
            _pageController.animateToPage(_selectedIndex, duration: const Duration(milliseconds: 200), curve: Curves.linear);
          });
        }
      ),
    );
  }
}
